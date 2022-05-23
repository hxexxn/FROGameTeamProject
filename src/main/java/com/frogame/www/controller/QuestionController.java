package com.frogame.www.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.frogame.www.model.Criteria;
import com.frogame.www.model.NoticeDTO;
import com.frogame.www.model.PageMakerDTO;
import com.frogame.www.model.QuestionDTO;
import com.frogame.www.model.UserDTO;
import com.frogame.www.service.QuestionService;
import com.frogame.www.service.UserService;

@Controller
public class QuestionController {

	@Autowired
	private QuestionService questionService;
	
	@Autowired
	private UserService userService;
	
	// 문의 게시판
	
	@GetMapping("/questionInsert")
	public String questionInsert(@RequestParam("user_id") String user_id, Model model) {
		UserDTO dto = userService.getUserNick(user_id);
		model.addAttribute("user_nick", dto.getUser_nick());
		return "question/questionInsert";
	}

	@PostMapping("/questionInsert")
	public String questionInsertProcess(QuestionDTO dto) {
		questionService.questionInsert(dto);
		return "redirect:/questionList";
	}
	
	@GetMapping("/questionList")
	public String questionList(Model model, Criteria cri) {
		int total = questionService.getTotal();
		model.addAttribute("list", questionService.getListPaging(cri));
		PageMakerDTO pageMake = new PageMakerDTO(cri, total);
	       model.addAttribute("pageMaker", pageMake); 
		return "question/questionList";	
		
	}
	
	@GetMapping("/questionRead")
	public String questionRead(@RequestParam("question_no") String question_no, Model model){
		questionService.questionViewCount(question_no);
		QuestionDTO dto = questionService.questionRead(question_no);
		model.addAttribute("dto", dto);
		return "question/questionRead" ; 		
	}
	
	@GetMapping("/questionByCount")
	public String noticeByCount(Model model, Criteria cri) {
		List<QuestionDTO> list = questionService.questionByCount();
		model.addAttribute("list", list);
		return "question/questionList";
	}
	
	@GetMapping("/questionDelete")
	public String questionDelete(@RequestParam("question_no")String question_no) {
		questionService.questionDelete(question_no);
		return "redirect:/questionList";
	}
	
	@GetMapping("/questionUpdate")
	public String questionUpdate(@RequestParam("question_no")String question_no, Model model) {
		QuestionDTO dto = questionService.questionRead(question_no);
		model.addAttribute("dto",dto);
		return "question/questionUpdate";
	}
	
	@PostMapping("/questionUpdate")
	public String questionUpdateProcess(QuestionDTO dto) {
		
		questionService.questionUpdate(dto);
		
		return "redirect:/questionRead?question_no="+dto.getQuestion_no();
	}
	
	
	
	
	
	}
	
	
	
	
	
