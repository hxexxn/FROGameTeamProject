package com.frogame.www.service;

public interface MyPageService {

	int myPageNickCheck(String new_user_nick);

	String userPwCheck(String test, String old_user_pw);

	void userUpdate(String new_user_pw, String new_user_nick, String new_user_email, String user_id);

}
