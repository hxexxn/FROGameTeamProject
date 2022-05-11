package com.frogame.www.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface MyPageMapper {

	String userRealPassword(String user_id);

	int myPageNickCheck(String new_user_nick);

	void userUpdate(@Param("new_user_pw") String new_user_pw, @Param("new_user_nick")String new_user_nick,
			@Param("new_user_email") String new_user_email, @Param("user_id") String user_id);

}
