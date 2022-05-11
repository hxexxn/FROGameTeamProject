package com.frogame.www.model;

import lombok.Data;

@Data
public class CartDTO {
	
	private int cart_no;
	private int cart_game_no;
	private String cart_user_id;

	// 조인 
	private GameDTO gameDto;
	private UserDTO userDto;
	
}
