package com.frogame.www.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.frogame.www.model.Criteria;
import com.frogame.www.model.NoticeDTO;
import com.frogame.www.model.PageMakerDTO;
import com.frogame.www.service.NoticeService;

@Controller
public class NoticeController {

	@Autowired
	private NoticeService noticeService;

	// 공지사항 입력

	@GetMapping("/admin_notice_insert")
	public String noticeInsert() {
		return "admin_include/admin_notice_insert";
	}

	@PostMapping("/noticeInsert")
	public String noticeInsertProcess(NoticeDTO dto) {
		noticeService.noticeInsert(dto);
		return "redirect:/admin_notice_list";
	}

	// 공지사항 목록
	@GetMapping("/noticeList")
	public String result(Model model, Criteria cri) {
		
		List<NoticeDTO> jjin = noticeService.getListPaging(cri);
		int total = noticeService.getTotal(cri);
		
		PageMakerDTO pageMake = new PageMakerDTO(cri, total);
		
		model.addAttribute("list", jjin);
		model.addAttribute("pageMaker", pageMake);

		return "notice/noticeList";
	}
	
	// 공지사항 목록 (관리자)
	@GetMapping("admin_notice_list")
	public String admin_notice_list(Model model, Criteria cri) {
		
		List<NoticeDTO> noticeList = noticeService.admin_noticeList(cri);
		int total = noticeService.getTotal(cri);
		
		PageMakerDTO pageMake = new PageMakerDTO(cri, total);
		
		model.addAttribute("noticeList", noticeList);
		model.addAttribute("pageMaker", pageMake);
		
		return "admin_include/admin_notice_list";
	}

	// 공지사항 읽기
	@GetMapping("/noticeRead")
	public String noticeRead(@RequestParam("notice_no") String notice_no, Model model) {
		noticeService.noticeViewCount(notice_no);
		NoticeDTO dto = noticeService.noticeRead(notice_no);
		model.addAttribute("dto", dto);
		return "notice/noticeRead";
	}
	
	// 공지사항 읽기 (관리자)
		@GetMapping("/admin_notice_read")
		public String admin_noticeRead(@RequestParam("notice_no") String notice_no, Model model) {
			noticeService.noticeViewCount(notice_no);
			NoticeDTO dto = noticeService.noticeRead(notice_no);
			model.addAttribute("dto", dto);
			return "admin_include/admin_notice_read";
		}

	// 조회수
	@GetMapping("/noticeByCount")
	public String noticeByCount(Model model, Criteria cri) {
		List<NoticeDTO> list = noticeService.noticeByCount();
		model.addAttribute("list", list);
		return "notice/noticeList";
	}

	// 게시글 삭제
	@GetMapping("/noticeDelete")
	public String noticeDelete(@RequestParam("notice_no") String notice_no) {
		noticeService.noticeDelete(notice_no);
		return "redirect:/admin_notice_list";
	}

	// 게시글 수정으로 들어가는 페이지
	@GetMapping("/admin_notice_modify")
	public String noticeUpdate(@RequestParam("notice_no") String notice_no, Model model) {
		NoticeDTO dto = noticeService.noticeRead(notice_no);
		model.addAttribute("dto", dto);
		return "admin_include/admin_notice_modify";
	}

	@PostMapping("/noticeUpate")
	public String noticeUpdateProcess(NoticeDTO dto) {
		noticeService.noticeUpdate(dto);

		return "redirect:/admin_notice_read?notice_no=" + dto.getNotice_no();
	}

	/*
	 * // 게시글 검색
	 * 
	 * @GetMapping("noticeSearch") public String
	 * noticeSearch(@RequestParam("search") String search, Model model) {
	 * List<NoticeDTO> jjin = noticeService.noticeSearch(search);
	 * System.out.println(search); model.addAttribute("list", jjin); return
	 * "notice/noticeList"; }
	 */

}
