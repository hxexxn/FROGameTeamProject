package com.frogame.www.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.frogame.www.mapper.QuestionCommentMapper;
import com.frogame.www.model.QuestionCommentDTO;

@Service
public class QuestionCommentServiceImpl implements QuestionCommentService{
	
	@Autowired
	private QuestionCommentMapper mapper ;

	@Override
	public void questionCommentInsert(QuestionCommentDTO dto) {
		mapper.questionCommentInsert(dto) ;
		
	}

	@Override
	public List<QuestionCommentDTO> questionCommentShow(String question_board_no) {
		return mapper.questionCommentShow(question_board_no);
	}

	@Override
	public void questionCommentDelete(String question_comment_no) {
		mapper.questionCommentDelete(question_comment_no);
		
	}

	
	

	

	
	
	
	
	
	
	
		
}
