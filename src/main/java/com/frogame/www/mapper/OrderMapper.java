package com.frogame.www.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface OrderMapper {

	void orderInsert(@Param("order_id")String order_id, @Param("user_id")String user_id, @Param("name")String name, @Param("total_price")int total_price);

	
}
