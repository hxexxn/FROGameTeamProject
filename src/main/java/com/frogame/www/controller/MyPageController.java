package com.frogame.www.controller;

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

import com.frogame.www.model.Criteria;
import com.frogame.www.model.OrderDTO;
import com.frogame.www.model.PageMakerDTO;
import com.frogame.www.model.UserDTO;
import com.frogame.www.service.MyPageService;
import com.frogame.www.service.OrderService;

@Controller
public class MyPageController {

	@Autowired
	private MyPageService myPageService;
	
	@Autowired
	private OrderService orderService;

	@GetMapping("/userMyPage")
	public String userMyPage(Model model, Criteria cri, @RequestParam("user_id")String user_id) {
		
		// 유저 구매 목록 출력 
				List<OrderDTO> userOrder = orderService.userOrder(user_id); 
				int total = orderService.getTotal(cri);
				PageMakerDTO pageMake = new PageMakerDTO(cri, total);
				model.addAttribute("userOrder", userOrder);
				model.addAttribute("pageMaker", pageMake);
				
		return "user/userMyPage";
	}
	
	

	// 유저 회원가입 - 닉네임 중복체크
	@PostMapping("/myPageNickCheck")
	@ResponseBody
	public int userNickCheck(@RequestParam("new_user_nick") String new_user_nick) {
		int nickCnt = myPageService.myPageNickCheck(new_user_nick);
		return nickCnt;
	}

	@PostMapping("/userUpdate")
	public String userUpdate(@RequestParam("old_user_pw") String old_user_pw,
			@RequestParam("new_user_pw") String new_user_pw, @RequestParam("new_user_nick") String new_user_nick, 
			@RequestParam("new_user_email") String new_user_email, HttpServletRequest request, RedirectAttributes rttr) {
		
		// 유저 정보 수정
		UserDTO dto = new UserDTO();
		HttpSession session = request.getSession();
		String user_id = (String) session.getAttribute("user_id");
		System.out.println("user_id값 확인 : " + user_id);
		String resultDTO = myPageService.userPwCheck(user_id, old_user_pw);
		dto.setUser_pw(new_user_pw);
		dto.setUser_nick(new_user_nick);
		dto.setUser_email(new_user_email);
		System.out.println("pw 값 : " + new_user_pw);
		myPageService.userUpdate(new_user_pw, new_user_nick, new_user_email, user_id);
		System.out.println("result 값 확인 :" + resultDTO);

	
		if (resultDTO.equals("UpdateSuccess")) {
			System.out.println("회원정보 수정 성공 / 세션 등록 완료.");
			return "redirect:/";
		} else {
			rttr.addFlashAttribute("msg", false);
			System.out.println("회원정보 수정 실패.");
			return "user/userMyPage";
		}
		
	}
}
