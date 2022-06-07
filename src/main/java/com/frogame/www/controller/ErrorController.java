package com.frogame.www.controller;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ErrorController {
	
	@GetMapping("/error404")
	public String Error404(HttpServletResponse res, Model model) {
		model.addAttribute("code", "ERROR_404");
		return "include/error404";
	}
	
	@GetMapping("/error500")
	public String Error500(HttpServletResponse res, Model model) {
		model.addAttribute("code", "ERROR_500");
		return "include/error500";
	}

}
