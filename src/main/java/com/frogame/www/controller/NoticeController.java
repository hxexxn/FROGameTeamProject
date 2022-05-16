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
	
	
	//공지사항

	@GetMapping("/noticeInsert")
	public String noticeInsert() {
		return "notice/noticeInsert";
	}

	@PostMapping("/noticeInsert")
	public String noticeInsertProcess(NoticeDTO dto) {
		noticeService.noticeInsert(dto);
		return "redirect:/noticeList";
	}
	
	@GetMapping("/noticeList")
	public String noticeList(Model model, Criteria cri) {
		int total = noticeService.getTotal();
       model.addAttribute("list", noticeService.getListPaging(cri));
       PageMakerDTO pageMake = new PageMakerDTO(cri, total);
       model.addAttribute("pageMaker", pageMake); 
       
		return "notice/noticeList";
	}
	
	@GetMapping("/noticeRead")
	public String noticeRead(@RequestParam("notice_no") String notice_no, Model model){
		noticeService.noticeViewCount(notice_no);
		NoticeDTO dto = noticeService.noticeRead(notice_no);
		model.addAttribute("dto", dto);
		return "notice/noticeRead" ; 
	}
	
	@GetMapping("/noticeByCount")
	public String noticeByCount(Model model, Criteria cri) {
		List<NoticeDTO> list = noticeService.noticeByCount();
		model.addAttribute("list", list);
		return "notice/noticeList";
	}
}
	
	
	
	
	
