package com.frogame.www.model;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class UserDTO {

	private int user_no;
	private String user_id;
	private String user_pw;
	private String user_nick;
	private String user_email;
	private Timestamp user_regdate;
	private boolean user_adultcheck;
	private boolean user_level;
	
}
