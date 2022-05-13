package com.frogame.www.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.frogame.www.model.AdminDTO;

@Mapper
public interface AdminMapper {

	String adminLogin(String admin_id);

	void adminInsert(AdminDTO dto);

}
