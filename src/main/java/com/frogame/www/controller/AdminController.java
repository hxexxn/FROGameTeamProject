package com.frogame.www.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.frogame.www.model.AdminDTO;
import com.frogame.www.service.AdminService;

@Controller
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	
	// 관리자 페이지 이동 
	@GetMapping("/admin")
	public String admin() {
		return "admin/admin";
	}
	
	// 관리자 회원가입 페이지 이동 
	@GetMapping("/adminRegist")
	public String adminInsert(AdminDTO dto) {
		return "admin/adminRegist";
	}
	
	// 관리자 회원가입 
	@PostMapping("/adminInsert")
	public String admininsert(AdminDTO dto) {
		adminService.adminInsert(dto);
		return "redirect:/admin";
	}
	
	
	// 관리자 로그인 및 비밀번호 암호화 매칭 
	@PostMapping("/admin")
	public String adminLogin (AdminDTO dto, HttpServletRequest request, RedirectAttributes rttr) {
		String resultDTO = adminService.adminLogin(dto);
		System.out.println("resultDTO 값 : " + resultDTO);

		if (resultDTO.equals("adminLogin")) {
			HttpSession session = request.getSession();
			session.setAttribute("admin_id", dto.getAdmin_id());
			System.out.println("관리자 로그인 성공 / 세션 등록 완료.");
			return "redirect:/";
		} else {
			rttr.addFlashAttribute("msg", false);
			System.out.println("로그인 실패.");
			return "user/userLogin";
		}
	}

}
