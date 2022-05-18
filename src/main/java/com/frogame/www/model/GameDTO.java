package com.frogame.www.model;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class GameDTO {
	
	private int game_no;
	private String game_title;
	private int game_price;
	private String game_genre;
	private Timestamp game_regdate;
	private int game_sellcount;
	private boolean game_adultcheck;
}
