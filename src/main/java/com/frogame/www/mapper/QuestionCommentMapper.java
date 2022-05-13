package com.frogame.www.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.frogame.www.model.QuestionCommentDTO;

@Mapper
public interface QuestionCommentMapper {

	void questionCommentInsert(QuestionCommentDTO dto);

	List<QuestionCommentDTO> questionCommentShow(String question_board_no);

	void questionCommentDelete(String question_comment_no);

	

	

	

	
	


	

	
	

	

	
	

}
