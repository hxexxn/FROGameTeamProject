package com.frogame.www.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.frogame.www.mapper.QuestionMapper;
import com.frogame.www.model.Criteria;
import com.frogame.www.model.QuestionDTO;

@Service
public class QuestionServiceImpl implements QuestionService{

	@Autowired
	private QuestionMapper mapper;

	@Override
	public void questionInsert(QuestionDTO dto) {
		mapper.questionInsert(dto);		
		
	}

	@Override
	public List<QuestionDTO> questionList() {
		return mapper.questionList();
	}

	@Override
	public QuestionDTO questionRead(String question_no) {
		return mapper.questionRead(question_no);
	}

	@Override
	public int getTotal(Criteria cri) {
		 return mapper.getTotal(cri);
	}

	@Override
	public List<QuestionDTO> getListPaging(Criteria cri) {
		return mapper.getListPaging(cri);
	
	}

	@Override
	public List<QuestionDTO> questionByCount() {
		return mapper.questionByCount();
	}

	@Override
	public void questionViewCount(String question_no) {
		mapper.questionViewCount(question_no);
		
	}

	@Override
	public void questionDelete(String question_no) {
		mapper.questionDelete(question_no);
		
	}

	@Override
	public void questionUpdate(QuestionDTO dto) {
		mapper.questionUpdate(dto);
		
	}

	@Override
	public List<QuestionDTO> admin_questionList(Criteria cri) {
		return mapper.admin_questionList(cri);
	}

	
	
	
	
	
		
}
