package com.frogame.www.model;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class NoticeDTO {

	private int notice_no ; 
	private String notice_title ; 
	private String notice_content ;
	private Timestamp notice_regdate ;
	private int notice_count ;		
	private String notice_writer ; 
	
}
