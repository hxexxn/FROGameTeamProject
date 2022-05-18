package com.frogame.www.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.frogame.www.model.FAQDTO;

@Mapper
public interface FAQMapper {

	List<FAQDTO> FAQ_list();

	List<FAQDTO> FAQSearch(String search);

	
	

}
