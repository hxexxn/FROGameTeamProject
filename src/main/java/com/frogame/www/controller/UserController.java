package com.frogame.www.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.frogame.www.model.UserDTO;
import com.frogame.www.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	
	// 메인화면 이동 
	@GetMapping("/")
	public String index() {
		return "index";
	}
	
	// 회원가입 화면 이동
	@GetMapping("/userRegist")
	public String userRegist() {
		return "user/userRegist";
	} 
	
	// 유저 회원가입 
	@PostMapping ("/userInsert")
	public String userInsert(UserDTO dto) {
		userService.userInsert(dto);
		return "redirect:/";
	}
	
	// 유저 회원가입 - 아이디 중복체크 
	@PostMapping ("/userIdCheck")
	@ResponseBody
	public int userIdCheck(@RequestParam("user_id")String user_id) {
		System.out.println("11111111111");
		int cnt = userService.userIdCheck(user_id);
		System.out.println("222222222222");
		return cnt;
	}
	
	// 유저 회원가입 - 닉네임 중복체크 
	@PostMapping("/userNickCheck")
	@ResponseBody
	public int userNickCheck(@RequestParam("user_nick")String user_nick) {
		int nickCnt = userService.userNickCheck(user_nick);
		return nickCnt;
	}
	
	// 유저 로그인 화면 이동
	@GetMapping("/userLogin")
	public String userLogin() {
		return "user/userLogin";
	}
	
	// 유저 로그인 및 비밀번호 암호화 매칭 
	@PostMapping("/userLogin")
	public String userLogin (UserDTO dto, HttpServletRequest request, RedirectAttributes rttr) {
		String resultDTO = userService.userLogin(dto);
		System.out.println("resultDTO 값 : " + resultDTO);
		
		if (resultDTO.equals("LoginSuccess")) {
			HttpSession session = request.getSession();
			session.setAttribute("user_id", dto.getUser_id());
			System.out.println("로그인 성공 / 세션 등록 완료.");
			return "redirect:/";
		} else {
			rttr.addFlashAttribute("msg", false);
			System.out.println("로그인 실패.");
			return "user/userLogin";
		}
	}
	
	// 유저 로그아웃 
	@GetMapping("/userLogout")
	public String userLogout (HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		return "redirect:/";
	}
	
	
	
	// test cont
	@GetMapping("/test")
	public String test() {
		return "test/testmain";
	}

}
