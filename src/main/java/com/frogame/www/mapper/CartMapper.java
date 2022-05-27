package com.frogame.www.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.frogame.www.model.CartDTO;

@Mapper
public interface CartMapper {

	void addCart(CartDTO dto);

//	void addCart2(CartDTO dto);

	void addCart2(@Param("cart_game_no")String cart_game_no, @Param("cart_user_id")String cart_user_id);
	
	List<CartDTO> cartList(String cart_user_id);
	
	void cartDelete(@Param("cart_no")String cart_no);
	
}
