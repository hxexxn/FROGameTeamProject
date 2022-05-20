package com.frogame.www.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.frogame.www.mapper.UserMapper;
import com.frogame.www.model.UserDTO;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserMapper userMapper;
	
	@Autowired
	private BCryptPasswordEncoder pwEncoder;
	
	// 유저 회원가입 및 비밀번호 암호화
	@Override
	public void userInsert(UserDTO dto) {
		System.out.println("회원가입 - 비밀번호 암호화 중.");
		dto.setUser_pw(pwEncoder.encode(dto.getUser_pw()));
		userMapper.userInsert(dto);
		System.out.println("회원가입 및 비밀번호 암호화 완료.");
	}
	
	// 유저 회원가입 - 아이디 중복 체크 
	@Override
	public int userIdCheck(String user_id) {
		System.out.println("회원가입 - 유저 아이디 중복 체크 중.");
		int cnt = userMapper.userIdCheck(user_id);
		return cnt;
	}

	// 유저 회원가입 - 닉네임 중복 체크 
	@Override
	public int userNickCheck(String user_nick) {
		System.out.println("회원가입 - 유저 닉네임 중복 체크 중.");
		int nickCnt = userMapper.userNickCheck(user_nick);
		return nickCnt;
	}
	
	// 유저 로그인 및 비밀번호 암호화 체크 
	@Override
	public String userLogin(UserDTO dto) {
		String resultPW = userMapper.userRealPassword(dto.getUser_id());
		boolean loginFilter = pwEncoder.matches(dto.getUser_pw(), resultPW);
		System.out.println(loginFilter);
		System.out.println("resultPW 값 : " + resultPW);
		
		if (loginFilter) {
			return "LoginSuccess";
		} else {
			return "LoginFail";
		}
	}
	
	// 유저 목록 출력
	@Override
	public List<UserDTO> userList() {
		return userMapper.userList();
	}
	
	// 유저 삭제 
	@Override
	public void userDelete(String user_no) {
		userMapper.userDelete(user_no);
		
	}

	@Override
	public UserDTO getUserNick(String user_id) {
		return userMapper.getUserNick(user_id);
	}

	

}
