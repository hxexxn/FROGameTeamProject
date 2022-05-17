package com.frogame.www.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.frogame.www.model.QuestionCommentDTO;
import com.frogame.www.service.QuestionCommentService;

@Controller
public class QuestionCommentController {

	@Autowired
	private QuestionCommentService questionCommentService;
	
	@PostMapping("/questionCommentInsert")
	@ResponseBody
	public String questionCommentInsert(QuestionCommentDTO dto) {
		
		questionCommentService.questionCommentInsert(dto);
		
		return "success" ;
	}	
	
	@PostMapping("/questionCommentShow")
	@ResponseBody
	public List<QuestionCommentDTO> questionCommentShow(@RequestParam("question_board_no")String question_board_no) {
		
		List<QuestionCommentDTO> list = questionCommentService.questionCommentShow(question_board_no);
		
		return list ;
	}
	
	@PostMapping("/questionCommentDelete")
	@ResponseBody
	public String questionCommentDelete(@RequestParam("question_comment_no")String question_comment_no) {
		
		questionCommentService.questionCommentDelete(question_comment_no);
		
		return "success" ;
	}
	
	
	
	
	
	
	}
	
	
	
	
	
