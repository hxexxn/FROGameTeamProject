package com.frogame.www.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.frogame.www.mapper.AdminMapper;
import com.frogame.www.model.AdminDTO;

@Service
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	private AdminMapper adminMapper;
	
	@Autowired
	private BCryptPasswordEncoder pwEncoder;

	@Override
	public String adminLogin(AdminDTO dto) {
		String adminPW = adminMapper.adminLogin(dto.getAdmin_id());
		boolean loginResult = pwEncoder.matches(dto.getAdmin_pw(), adminPW);
		System.out.println(loginResult);
		System.out.println("adminPW 값 : " + adminPW);
		
		if (loginResult) {
			return "adminLogin";
		} else {
			return "adminLoginFail";
		}
	}
	
	// 관리자 등록
	@Override
	public void adminInsert(AdminDTO dto) {
		dto.setAdmin_pw(pwEncoder.encode(dto.getAdmin_pw()));
		adminMapper.adminInsert(dto);
	}

}
