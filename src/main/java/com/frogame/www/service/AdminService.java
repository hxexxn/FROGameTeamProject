package com.frogame.www.service;

import com.frogame.www.model.AdminDTO;

public interface AdminService {

	String adminLogin(AdminDTO dto);

	void adminInsert(AdminDTO dto);

}
