package com.frogame.www.model;

import java.sql.Date;
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
	
	private String game_min_os;
	private String game_min_cpu;
	private String game_min_ram;
	private String game_min_vga;
	private String game_min_dirX;
	private String game_min_ssd;
	
	private String game_std_os;
	private String game_std_cpu;
	private String game_std_ram;
	private String game_std_vga;
	private String game_std_dirX;
	private String game_std_ssd;
	
	private String game_info;
	private String game_platform;
	private Date game_release;
}
