package com.frogame.www.service;

public interface OrderService {

	void orderInsert(String order_id, String user_id, String name, int total_price);

}
