package com.frogame.www.controller;

import java.util.ArrayList;
import java.util.Base64;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.frogame.www.mapper.GameMapper;
import com.frogame.www.model.CartDTO;
import com.frogame.www.service.CartService;
import com.frogame.www.service.OrderService;



@Controller
public class CartController {
	
	@Autowired
	private CartService cartService;
	
	@Autowired
	private GameMapper gameMapper;
	
	@Autowired
	private OrderService orderService;
	
//	 장바구니 추가 1
	@GetMapping("/addCart")
	public String addCart(CartDTO dto) {
		cartService.addCart(dto);
		System.out.println("장바구니 추가 완료.");
		return "redirect:/";
	}
	
	// 장바구니 추가 2 (ajax)
	@PostMapping("/addCart2")
	@ResponseBody
	public String addCart2(@RequestParam("cart_game_no")String cart_game_no, @RequestParam("cart_user_id")String cart_user_id) {
		cartService.addCart2(cart_game_no, cart_user_id);
		return "success";
	}
	
	// 장바구니 목록 출력
	@GetMapping("/cartList")
	public String cartList(@RequestParam("cart_user_id")String cart_user_id, Model model) {
		System.out.println("cart_user_id 값 : " + cart_user_id);
		List<CartDTO> cList = cartService.cartList(cart_user_id);
		List<String> imgList = new ArrayList<String>();
		for (int i = 0; i < cList.size(); i++) {
			imgList.add("data:image/;base64," + Base64.getEncoder().encodeToString(gameMapper.getImage1(cList.get(i).getCart_game_no()).getFile()));
		}
		model.addAttribute("cList", cList);
		model.addAttribute("img",imgList);
		return "cart/cartList";
	}
	
	// 장바구니 삭제 
	@PostMapping("/cartDelete")
	public String cartDelete(@RequestParam("cart_no")String cart_no, @RequestParam("cart_user_id")String cart_user_id, Model model) {
		cartService.cartDelete(cart_no);
		System.out.println("cartDelete 끝");
		
		System.out.println(cart_no);
		System.out.println(cart_user_id);
		
		List<CartDTO> cList = cartService.cartList(cart_user_id);
		model.addAttribute("cList", cList);
		model.addAttribute("cart_user_id",cart_user_id);

		return "redirect:/cartList";
	}
	
	// 결제 성공시 장바구니 비우고 판매수 +1
	@PostMapping("/paySuccess")
	@ResponseBody
	public String paySuccess(@RequestParam(value="game_no[]") List<String> game_no, @RequestParam(value="cart_no[]") List<String> cart_no,
			@RequestParam(value="order_id") String order_id, @RequestParam(value="user_id") String user_id, @RequestParam(value="total_price") int total_price,
			@RequestParam(value="name") String name) {
		for(String i : cart_no) {
			cartService.cartDelete(i);
		}
		for(String i : game_no) {
			gameMapper.gameSellCount(i);
		}
		orderService.orderInsert(order_id, user_id, name, total_price);
		return "Success";
	}
}

