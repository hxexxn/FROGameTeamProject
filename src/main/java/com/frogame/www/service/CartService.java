package com.frogame.www.service;

import java.util.List;

import com.frogame.www.model.CartDTO;

public interface CartService {

	void addCart(CartDTO dto);

//	void addCart2(CartDTO dto);

	void addCart2(String cart_game_no, String cart_user_id);

	List<CartDTO> cartList(String cart_user_id);

	void cartDelete(String cart_no);


}
