package com.frogame.www.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TestController {
	
	@GetMapping("/indexTop")
	public String indexTop() {
		return "test/indexTop";
	}
	
	@GetMapping("/indexBottom")
	public String indexBottom() {
		return "test/indexBottom";
	}
	
	@GetMapping("/indexTest")
	public String indexTest() {
		return "test/indexTest";
	}
	
	
	@GetMapping("/cartTest")
	public String cartTest() {
		return "cart/cartTest";
	}
}
