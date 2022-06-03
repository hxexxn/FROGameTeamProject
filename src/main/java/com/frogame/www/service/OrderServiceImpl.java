package com.frogame.www.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.frogame.www.mapper.OrderMapper;
import com.frogame.www.model.Criteria;
import com.frogame.www.model.OrderDTO;

@Service
public class OrderServiceImpl implements OrderService{

	@Autowired 
	private OrderMapper orderMapper;

	@Override
	public void orderInsert(String order_id, String user_id, String name, int total_price) {
		orderMapper.orderInsert(order_id, user_id, name, total_price);
	}

	@Override
	public List<OrderDTO> orderList() {
		return orderMapper.orderList();
	}

	@Override
	public List<OrderDTO> pageList(Criteria cri) {
		return orderMapper.pageList(cri);
	}

	@Override
	public int getTotal(Criteria cri) {
		return orderMapper.getTotal(cri);
	}
	
	
}
