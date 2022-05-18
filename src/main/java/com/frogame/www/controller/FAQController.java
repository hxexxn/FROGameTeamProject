package com.frogame.www.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.frogame.www.model.FAQDTO;
import com.frogame.www.service.FAQService;

@Controller
public class FAQController {		
	
	@Autowired
	private FAQService faqService;
		
	@GetMapping("/indexFAQ")
	public String indexFAQ() {
		return "FAQ/indexFAQ";
	}	
	
	@GetMapping("/FAQ_01")
	public String FAQ_01() {
		return "FAQ/FAQ_01";
	}	
	@GetMapping("/FAQ_02")
	public String FAQ_02() {
		return "FAQ/FAQ_02";
	}	
	@GetMapping("/FAQ_03")
	public String FAQ_03() {
		return "FAQ/FAQ_03";
	}	
	@GetMapping("/FAQ_04")
	public String FAQ_04() {
		return "FAQ/FAQ_04";
	}	
	@GetMapping("/FAQ_05")
	public String FAQ_05() {
		return "FAQ/FAQ_05";
	}	
	@GetMapping("/FAQ_06")
	public String FAQ_06() {
		return "FAQ/FAQ_06";
	}	
	@GetMapping("/FAQ_07")
	public String FAQ_07() {
		return "FAQ/FAQ_07";
	}	
	@GetMapping("/FAQ_08")
	public String FAQ_08() {
		return "FAQ/FAQ_08";
	}	
	
	// FAQ 목록
		@GetMapping("/FAQ_list")
		public String FAQ_list(Model model) {
		List<FAQDTO> list = faqService.FAQ_list();
		model.addAttribute("list", list);		     
	       
			return "FAQ/FAQ_list";
		}	
	
	
//	검색기능
	
	@GetMapping("FAQSearch")
	public String FAQSearch(@RequestParam("search") String search, Model model) {
		List<FAQDTO> list = faqService.FAQSearch(search);	
		System.out.println(search);
		model.addAttribute("list", list);		
		return "FAQ/FAQ_list";
	}
	
	
	
	
	
	
	
	
	
	}
	
	
	
	
	
