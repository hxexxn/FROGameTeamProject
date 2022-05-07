package com.frogame.www.service;

import com.frogame.www.model.UserDTO;

public interface UserService {

	void userInsert(UserDTO dto);

	int userIdCheck(String user_id);

	int userNickCheck(String user_nick);

	String userLogin(UserDTO dto);

}
