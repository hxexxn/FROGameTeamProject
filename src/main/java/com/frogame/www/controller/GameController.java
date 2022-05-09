package com.frogame.www.controller;

import java.util.ArrayList;
import java.util.Base64;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;


import com.frogame.www.model.Criteria;
import com.frogame.www.model.GameDTO;
import com.frogame.www.model.PageMakerDTO;
import com.frogame.www.service.GameService;

@Controller
public class GameController {
	
	@Autowired
	private GameService gameService;
	
	// 게임 등록 페이지 이동
	@GetMapping("/gameInsert")
	public String formFile() {
		return "game/gameInsert";
	}
	
	// 게임 정보 등록 (이미지)
	@PostMapping("/saveImage")
	public String saveImage(@RequestParam("file") MultipartFile file, @RequestParam("game_title") String game_title,
			@RequestParam("game_price") String game_price, @RequestParam("game_genre_no") String game_genre_no) {
		try {
			byte[] arr = file.getBytes();
			GameDTO dto = new GameDTO();
			dto.setGame_title(game_title);
			dto.setGame_price(Integer.parseInt(game_price));
			dto.setGame_genre_no(game_genre_no);
			dto.setFile(arr);

			gameService.newInsert(dto);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/gameList";
	}
	

	// 게임 목록 
	@GetMapping("/gameList")
	public String result (Model model, Criteria cri) {
		List<GameDTO> jjin = gameService.getListPaging(cri);
		int total = gameService.getTotal();
		model.addAttribute("list", jjin);
		List<String> imgList = new ArrayList<String>();
		for (int i = 0; i < jjin.size(); i++) {
			imgList.add("data:image/;base64," + Base64.getEncoder().encodeToString(jjin.get(i).getFile()));
		}
		PageMakerDTO pageMake = new PageMakerDTO(cri, total);
		model.addAttribute("pageMaker", pageMake);
		model.addAttribute("jjin", jjin);
		model.addAttribute("img", imgList);

		return "game/gameList";
		
	}
	
	// 게임 상세 정보 
	@GetMapping("/gameRead")
	public String gameRead(@RequestParam("game_no") String game_no, Model model) {
		GameDTO dto = gameService.gameRead(game_no);
		model.addAttribute("dto", dto);
		dto.getGame_regdate();
		dto.getFile();
		return "game/gameRead";
	}
	
	// 게임 검색 
	@GetMapping("gameSearch")
	public String gameSearch(@RequestParam("search") String search, Model model) {
		List<GameDTO> jjin = gameService.gameSearch(search);

		List<String> imgList = new ArrayList<String>();
		for (int i = 0; i < jjin.size(); i++) {
			imgList.add("data:image/jpeg;base64," + Base64.getEncoder().encodeToString(jjin.get(i).getFile()));
		}

		model.addAttribute("jjin", jjin);
		model.addAttribute("img", imgList);

		return "game/gameList";
	}

}