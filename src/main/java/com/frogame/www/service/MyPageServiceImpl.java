package com.frogame.www.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.frogame.www.mapper.MyPageMapper;
import com.frogame.www.model.UserDTO;

@Service
public class MyPageServiceImpl implements MyPageService {
	
	@Autowired
	private MyPageMapper mapper;
	
	@Autowired
	private BCryptPasswordEncoder pwEncoder;

	@Override
	public String userPwCheck(String user_id, String old_user_pw) {
		String resultPW = mapper.userRealPassword(user_id);
		System.out.println(resultPW);
		boolean loginFilter = pwEncoder.matches(old_user_pw, resultPW);
		System.out.println(loginFilter);
		System.out.println("resultPW 값 : " + resultPW);
		
		if (loginFilter) {
			return "UpdateSuccess";
		} else {
			return "UpdateFail";
		}
	}

	@Override
	public int myPageNickCheck(String new_user_nick) {
		return mapper.myPageNickCheck(new_user_nick);
	}

	@Override
	public void userUpdate(String new_user_pw, String new_user_nick, String new_user_email, String user_id) {
		System.out.println("pw 값 : " + new_user_pw);
		new_user_pw = pwEncoder.encode(new_user_pw);
		mapper.userUpdate(new_user_pw, new_user_nick, new_user_email, user_id);
	}
}
