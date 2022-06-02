package com.frogame.www.model;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class OrderDTO {

	private String order_id;
	private String order_title ;
	private String user_id;
	private int total_price;
	private Timestamp order_Date;
}
