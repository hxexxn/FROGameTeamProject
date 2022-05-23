package com.frogame.www.service;

import java.util.List;

import com.frogame.www.model.Criteria;
import com.frogame.www.model.UserDTO;

public interface UserService {

	void userInsert(UserDTO dto);

	int userIdCheck(String user_id);

	int userNickCheck(String user_nick);

	UserDTO userLogin(UserDTO dto);

	List<UserDTO> userList(Criteria cri);

	void userDelete(String user_no);

	UserDTO getUserNick(String user_id);

	int getTotal(Criteria cri);


}
