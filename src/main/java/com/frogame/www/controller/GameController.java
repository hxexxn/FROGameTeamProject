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

import com.frogame.www.mapper.GameMapper;
import com.frogame.www.model.Criteria;
import com.frogame.www.model.GameDTO;
import com.frogame.www.model.PageMakerDTO;
import com.frogame.www.service.GameService;

@Controller
public class GameController {
	
	@Autowired
	private GameService gameService;
	
	@Autowired
	private GameMapper gameMapper;
	
	// 게임 등록 페이지 이동
	@GetMapping("/gameInsert")
	public String formFile() {
		return "game/gameInsert";
	}
	
	// 게임 정보 등록 (이미지)
	@PostMapping("/saveImage")
	public String saveImage(@RequestParam("file") MultipartFile[] file, GameDTO dto) {
		try {

			System.out.println("dto 값 확인 :" + dto.getGame_platform());
			gameService.newInsert(dto);
			System.out.println(dto.getGame_no());
			
			for(int i=0; i<file.length; i++) {
				byte[] img = file[i].getBytes();
				gameService.imgInsert(dto.getGame_no(), img);
			}
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/gameList";
	}

	// 게임 목록 
	@GetMapping("/gameList")
	public String result (Model model, Criteria cri) {
		List<GameDTO> list = gameService.getListPaging(cri);
		int total = gameService.getTotal(cri);
		List<String> imgList = new ArrayList<String>();
		for (int i = 0; i <list.size(); i++) { 
			imgList.add("data:image/;base64," + Base64.getEncoder().encodeToString(gameMapper.getImage1(list.get(i).getGame_no()).getFile())); 
			}
		PageMakerDTO pageMake = new PageMakerDTO(cri, total);
		model.addAttribute("pageMaker", pageMake);
		model.addAttribute("list", list);
		model.addAttribute("img", imgList);

		return "game/gameList";
	}
	
	@GetMapping("/hotGame")
	public String hotGame (Model model) {
		List<GameDTO> list = gameService.hotGame();
		List<String> imgList = new ArrayList<String>();
		for (int i = 0; i <list.size(); i++) { 
			imgList.add("data:image/;base64," + Base64.getEncoder().encodeToString(gameMapper.getImage1(list.get(i).getGame_no()).getFile())); 
			}
		model.addAttribute("list", list);
		model.addAttribute("img", imgList);

		return "game/hot_game";
	}
	
	@GetMapping("/newGame")
	public String newGame (Model model) {
		List<GameDTO> list = gameService.newGame();
		List<String> imgList = new ArrayList<String>();
		for (int i = 0; i <list.size(); i++) { 
			imgList.add("data:image/;base64," + Base64.getEncoder().encodeToString(gameMapper.getImage1(list.get(i).getGame_no()).getFile())); 
			}
		model.addAttribute("list", list);
		model.addAttribute("img", imgList);

		return "game/new_game";
	}

	@GetMapping("/gameRead")
	public String gameRead() {
		return "game/gameRead";
	}

	
	// 테스트 게임 상세 정보 페이지
	@GetMapping("/gameReadTest")
	public String gameReadTest(@RequestParam("game_no") String game_no, Model model) {
		model.addAttribute("game_no", game_no);
		
		return "game/gameReadTest";
	}
	// 게임 정보 (ajax로 가져오기용)
	@PostMapping("/gameRead")
	public String gameRead(@RequestParam("game_no") String game_no, Model model) {
		GameDTO dto = gameService.gameRead(game_no);
		model.addAttribute("dto", dto);
		model.addAttribute("imgList", gameMapper.getImages(game_no));
		return "game/gameRead";
	}
	
	@GetMapping("gameDelete")
	public String gameDelete(@RequestParam("game_no") String game_no) {
		gameService.gameDelete(game_no);
		return "redirect:/admin";
	}
	
	
}
