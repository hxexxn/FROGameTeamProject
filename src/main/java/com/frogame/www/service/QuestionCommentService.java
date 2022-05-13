package com.frogame.www.service;

import java.util.List;

import com.frogame.www.model.QuestionCommentDTO;

public interface QuestionCommentService {

	void questionCommentInsert(QuestionCommentDTO dto);

	List<QuestionCommentDTO> questionCommentShow(String question_board_no);

	void questionCommentDelete(String question_comment_no);

	

	
	
		
	

	

	
	

	
	

}
