package com.frogame.www.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.frogame.www.model.OrderDTO;

@Mapper
public interface OrderMapper {

	void orderInsert(@Param("order_id")String order_id, @Param("user_id")String user_id, @Param("name")String name, @Param("total_price")int total_price);

	List<OrderDTO> orderList();

	
}
