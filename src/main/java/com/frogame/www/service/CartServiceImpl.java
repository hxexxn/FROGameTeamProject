package com.frogame.www.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.frogame.www.mapper.CartMapper;
import com.frogame.www.model.CartDTO;

@Service
public class CartServiceImpl implements CartService {

	@Autowired
	private CartMapper cartMapper;

	@Override
	public void addCart(CartDTO dto) {
		cartMapper.addCart(dto);
		System.out.println("장바구니 서비스 IMPL 통과.");
	}

//	@Override
//	public void addCart2(CartDTO dto) {
//		cartMapper.addCart2(dto);
//		System.out.println("장바구니 서비스 2 IMPL 통과.");
//		
//	}

	@Override
	public void addCart2(String cart_game_no, String cart_user_id) {
		cartMapper.addCart2(cart_game_no, cart_user_id);
	}

	// 장바구니 목록 출력
	@Override
	public List<CartDTO> cartList(String cart_user_id) {
		List<CartDTO> cart = cartMapper.cartList(cart_user_id);
		return cart;
	}

	@Override
	public void cartDelete(String cart_no) {
		cartMapper.cartDelete(cart_no);
		System.out.println("cartDelete IMPL 통과 ");
	}

	
	
}
