package com.frogame.www.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class FAQController {		
		
	@GetMapping("/indexFAQ")
	public String indexFAQ() {
		return "FAQ/indexFAQ";
	}	
	
	}
	
	
	
	
	
