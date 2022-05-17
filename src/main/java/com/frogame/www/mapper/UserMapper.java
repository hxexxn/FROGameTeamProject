package com.frogame.www.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.frogame.www.model.UserDTO;

@Mapper
public interface UserMapper {
	
	// 유저 회원가입 
	void userInsert(UserDTO dto);
	
	// 유저 회원가입 아이디 중복 체크 
	int userIdCheck(String user_id);
	
	// 유저 회원가입 닉네임 중복 체크 
	int userNickCheck(String user_nick);
	
	// 유저 로그인 비밀번호 매치
	String userRealPassword(String user_id);
	
	// 유저 목록 출력
	List<UserDTO> userList();

	void userDelete(String user_no);

}
