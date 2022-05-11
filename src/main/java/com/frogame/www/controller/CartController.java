package com.frogame.www.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.frogame.www.model.CartDTO;
import com.frogame.www.service.CartService;

@Controller
public class CartController {
	
	@Autowired
	private CartService cartService;
	
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
		System.out.println("game_no >>>> " + cart_game_no);
		cartService.addCart2(cart_game_no, cart_user_id);
		System.out.println("장바구니 추가 완료.");
		return "success";
	}
	
	// 장바구니 목록 출력
	@GetMapping("/cartList")
	public String cartList(@RequestParam("cart_user_id")String cart_user_id, Model model) {
		System.out.println("cart_user_id 값 : " + cart_user_id);
		List<CartDTO> cList = cartService.cartList(cart_user_id);
		model.addAttribute("cList", cList);
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
	
}
