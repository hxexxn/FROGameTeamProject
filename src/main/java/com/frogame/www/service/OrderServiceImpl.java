package com.frogame.www.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.frogame.www.mapper.OrderMapper;

@Service
public class OrderServiceImpl implements OrderService{

	@Autowired 
	private OrderMapper orderMapper;

	@Override
	public void orderInsert(String order_id, String user_id, String name, int total_price) {
		orderMapper.orderInsert(order_id, user_id, name, total_price);
	}
	
	
}
