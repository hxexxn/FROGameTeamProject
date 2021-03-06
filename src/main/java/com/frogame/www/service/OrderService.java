package com.frogame.www.service;

import java.util.List;

import com.frogame.www.model.Criteria;
import com.frogame.www.model.OrderDTO;

public interface OrderService {

	void orderInsert(String order_id, String user_id, String name, int total_price);

	List<OrderDTO> orderList();

	List<OrderDTO> pageList(Criteria cri);

	int getTotal(Criteria cri);

	List<OrderDTO> userOrder(String user_id);

}
