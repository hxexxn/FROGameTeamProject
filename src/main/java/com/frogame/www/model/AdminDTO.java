package com.frogame.www.model;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class AdminDTO {

	private int admin_no;
	private String admin_id;
	private String admin_pw;
	private Timestamp admin_regDate;
	private int admin_level;
	
}
