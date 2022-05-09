package com.frogame.www.service;

import java.util.List;

import com.frogame.www.model.Criteria;
import com.frogame.www.model.QuestionDTO;

public interface QuestionService {
	
		
	//문의게시판

	void questionInsert(QuestionDTO dto);

	List<QuestionDTO> questionList();

	QuestionDTO questionRead(String question_no);

	public int getTotal();

	public List<QuestionDTO> getListPaging(Criteria cri);

	List<QuestionDTO> questionByCount();

	void questionViewCount(String question_no);

	

	
	

	
	

}
