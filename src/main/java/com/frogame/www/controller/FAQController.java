package com.frogame.www.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class FAQController {		
		
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
	
	}
	
	
	
	
	
