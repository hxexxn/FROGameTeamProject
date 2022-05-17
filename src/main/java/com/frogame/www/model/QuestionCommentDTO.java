package com.frogame.www.model;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class QuestionCommentDTO {

	
	
	private int question_comment_no ; 
	private String question_comment_content ; 	
	private Timestamp question_comment_regdate ;
	private int question_board_no ; 
	private String question_comment_writer ;

	
	
}
