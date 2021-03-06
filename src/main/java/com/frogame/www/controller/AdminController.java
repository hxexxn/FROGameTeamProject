package com.frogame.www.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.frogame.www.model.AdminDTO;
import com.frogame.www.model.Criteria;
import com.frogame.www.model.GameDTO;
import com.frogame.www.model.NoticeDTO;
import com.frogame.www.model.PageMakerDTO;
import com.frogame.www.model.QuestionDTO;
import com.frogame.www.model.UserDTO;
import com.frogame.www.service.AdminService;
import com.frogame.www.service.GameService;
import com.frogame.www.service.NoticeService;
import com.frogame.www.service.QuestionService;
import com.frogame.www.service.UserService;

@Controller
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private GameService gameService;
	
	@Autowired
	private NoticeService noticeService;
	
	@Autowired
	private QuestionService questionService;
	
	
	// 관리자 페이지 이동 
		@GetMapping("/testadmin")
		public String admin2 (Model model, Criteria cri, HttpSession sess) {
			
			String user_id = sess.getAttribute("user_id")+"";
			
			if (user_id.equals("admin")) {
				// 유저 목록
				List<UserDTO> userList = userService.userList(cri);
				model.addAttribute("userList", userList);
				
				// 게임 목록
				List<GameDTO> gameList = gameService.admin_gameList(cri);
				int total = gameService.getTotal(cri);

				// 공지 목록 
				List<NoticeDTO> noticeList = noticeService.admin_noticeList(cri);
				model.addAttribute("noticeList", noticeList);
							
				PageMakerDTO pageMake = new PageMakerDTO(cri, total);
				
				model.addAttribute("gameList", gameList);
				model.addAttribute("pageMaker", pageMake);
				
				// Q&A 목록
				List<QuestionDTO> questionList = questionService.admin_questionList(cri);
				model.addAttribute("questionList", questionList);

				return "admin/testadmin";
			} else {
				return "include/error403";
			}
			
			
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
		return "redirect:/afdrmoignemag";
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
