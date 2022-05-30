package com.frogame.www.controller;

import java.util.ArrayList;
import java.util.Base64;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.frogame.www.mapper.GameMapper;
import com.frogame.www.model.Criteria;
import com.frogame.www.model.GameDTO;
import com.frogame.www.model.PageMakerDTO;
import com.frogame.www.model.UserDTO;
import com.frogame.www.service.GameService;
import com.frogame.www.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private GameService gameService;
	
	@Autowired
	private GameMapper gameMapper;
//	
//	// 관리자 화면 이동 
//	@GetMapping("/admin")
//	public String admin() {
//		return "admin/admin";
//	}
	
	// 메인화면 이동 
	@GetMapping("/")
	public String index(Model model) {
		List<GameDTO> list = gameService.newGame();
		List<String> imgList = new ArrayList<String>();
		for (int i = 0; i <list.size(); i++) { 
			imgList.add("data:image/;base64," + Base64.getEncoder().encodeToString(gameMapper.getImage1(list.get(i).getGame_no()).getFile())); 
			}
		List<GameDTO> hotList = gameService.hotGame();
		List<String> hotimg = new ArrayList<String>();
		for (int i = 0; i <hotList.size(); i++) { 
			hotimg.add("data:image/;base64," + Base64.getEncoder().encodeToString(gameMapper.getImage1(hotList.get(i).getGame_no()).getFile())); 
			}
		model.addAttribute("list", list);
		model.addAttribute("img", imgList);
		model.addAttribute("hotList", hotList);
		model.addAttribute("hotimg", hotimg);
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
		UserDTO resultDTO = userService.userLogin(dto);
		System.out.println("resultDTO 값 : " + resultDTO);

		if (resultDTO != null) {
			
			
			System.out.println("아이디 : " + resultDTO.getUser_id());
			System.out.println("레벨 : " + resultDTO.isUser_level());
			System.out.println("닉네임 : " + resultDTO.getUser_nick());
			
			HttpSession session = request.getSession();
			session.setAttribute("user_id", resultDTO.getUser_id());
			session.setAttribute("user_level", resultDTO.isUser_level());
			session.setAttribute("user_nick", resultDTO.getUser_nick());
			
			System.out.println(resultDTO.isUser_level());
			
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
	
//	// 유저 목록 출력 (관리자용 - 메인)
//	@GetMapping("/admin_user_list")
//	public String userList (Model model) {
//		List<UserDTO> userList = userService.userList();
//		
//		model.addAttribute("userList", userList);
//		
//		return "admin_include/admin_user_list";
//	}
	
	// 유저 목록 출력 (관리자용 - 게시판)
	@GetMapping("/admin_user_list")
	public String agmin_userList (Model model, Criteria cri) {
			List<UserDTO> userList = userService.userList(cri);
			int total = userService.getTotal(cri);
			
			PageMakerDTO pageMake = new PageMakerDTO(cri, total);
			
			model.addAttribute("userList", userList);
			model.addAttribute("pageMaker", pageMake);
			
			return "admin_include/admin_user_list";
		}
	
	// 유저 삭제 
	@GetMapping("/userDelete")
	public String userDelete(@RequestParam("user_no")String user_no) {
		System.out.println("user_no 값 : " + user_no);
		userService.userDelete(user_no);
		System.out.println("유저 삭제 완료.");
		return "redirect:/admin";
	}
	
	
}
