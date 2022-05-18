package com.frogame.www.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.frogame.www.mapper.FAQMapper;
import com.frogame.www.model.FAQDTO;

@Service
public class FAQServiceImpl implements FAQService{
	
	@Autowired
	private FAQMapper mapper;

	@Override
	public List<FAQDTO> FAQ_list() {
		return mapper.FAQ_list();
		
	}

	@Override
	public List<FAQDTO> FAQSearch(String search) {
		return mapper.FAQSearch(search);
	}

		
	
	
		
}
