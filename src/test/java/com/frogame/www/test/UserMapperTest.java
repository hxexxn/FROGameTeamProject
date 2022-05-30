package com.frogame.www.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.frogame.www.mapper.UserMapper;
import com.frogame.www.model.UserDTO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class UserMapperTest {
	
	@Autowired
	private UserMapper mapper;
	
	@Test
	public void memberInsertDummyTest() {
		
		for(int i = 101; i < 200; i++) {
			UserDTO dto = new UserDTO();
			dto.setUser_id("testID"+i);
			dto.setUser_pw("testPW"+i+"!");
			dto.setUser_nick("대구"+i);
			dto.setUser_email("대구"+i+"@naver.com");
			log.info("dto 값 확인 : " + dto);
			mapper.userInsert(dto);
		}
	
	}
}