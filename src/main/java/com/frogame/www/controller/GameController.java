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
	
	// 寃뚯엫 �벑濡� �럹�씠吏� �씠�룞
	@GetMapping("/gameInsert")
	public String formFile() {
		return "admin_include/admin_game_insert";
	}
	
	// 寃뚯엫 �젙蹂� �벑濡� (�씠誘몄�)
	@PostMapping("/saveImage")
	public String saveImage(@RequestParam("file") MultipartFile[] file, GameDTO dto) {
		try {

			gameService.newInsert(dto);
			
			for(int i=0; i<file.length; i++) {
				byte[] img = file[i].getBytes();
				gameService.imgInsert(dto.getGame_no(), img);
			}
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/admin_game_list";
	}

	// 寃뚯엫 紐⑸줉 (�쑀���슜)
//	@GetMapping("/gameList")
//	public String result (Model model, Criteria cri) {
//		List<GameDTO> list = gameService.getListPaging(cri);
//		int total = gameService.getTotal(cri);
//		int tagtotal = gameService.tagTotal(cri);
//		List<String> imgList = new ArrayList<String>();
//		for (int i = 0; i <list.size(); i++) { 
//			imgList.add("data:image/;base64," + Base64.getEncoder().encodeToString(gameMapper.getImage1(list.get(i).getGame_no()).getFile())); 
//			}
//		
//		PageMakerDTO pageMake = new PageMakerDTO(cri, tagtotal);
//		model.addAttribute("pageMaker", pageMake);
//		model.addAttribute("list", list);
//		model.addAttribute("img", imgList);
//
//		return "game/gameList";
//	}
	
	@GetMapping("/game_list")
	public String result (Model model, Criteria cri) {
		List<GameDTO> list = gameService.getListPaging(cri);
		int tagtotal = gameService.tagTotal(cri);
		List<String> imgList = new ArrayList<String>();
		for (int i = 0; i <list.size(); i++) { 
			imgList.add("data:image/;base64," + Base64.getEncoder().encodeToString(gameMapper.getImage1(list.get(i).getGame_no()).getFile())); 
			}
		PageMakerDTO pageMake = new PageMakerDTO(cri, tagtotal);
		model.addAttribute("pageMaker", pageMake);
		model.addAttribute("list", list);
		model.addAttribute("img", imgList);

		return "game/game_list";
	}
	
	// 寃뚯엫 紐⑸줉 (愿�由ъ옄�슜)
	@GetMapping("/admin_game_list")
	public String result2 (Model model, Criteria cri) {
		
		List<GameDTO> gameList = gameService.admin_gameList(cri);
		int total = gameService.getTotal(cri);
		
		PageMakerDTO pageMake = new PageMakerDTO(cri, total);
		
		model.addAttribute("gameList", gameList);
		model.addAttribute("pageMaker", pageMake);
		
		return "admin_include/admin_game_list";
	}
	
	@GetMapping("/game_hot_list")
	public String hotGame (Model model) {
		List<GameDTO> list = gameService.hotGame();
		List<String> imgList = new ArrayList<String>();
		for (int i = 0; i <list.size(); i++) { 
			imgList.add("data:image/;base64," + Base64.getEncoder().encodeToString(gameMapper.getImage1(list.get(i).getGame_no()).getFile())); 
			}
		model.addAttribute("list", list);
		model.addAttribute("img", imgList);

		return "game/game_hot_list";
	}
	
	@GetMapping("/game_new_list")
	public String newGame (Model model) {
		List<GameDTO> list = gameService.newGame();
		List<String> imgList = new ArrayList<String>();
		for (int i = 0; i <list.size(); i++) { 
			imgList.add("data:image/;base64," + Base64.getEncoder().encodeToString(gameMapper.getImage1(list.get(i).getGame_no()).getFile())); 
			}
		model.addAttribute("list", list);
		model.addAttribute("img", imgList);

		return "game/game_new_list";
	}

	@GetMapping("/game_read")
	public String gameRead() {
		return "game/game_read";
	}
	
	// �뀒�뒪�듃 寃뚯엫 �긽�꽭 �젙蹂� �럹�씠吏�
	@GetMapping("/gameReadTest")
	public String gameReadTest(@RequestParam("game_no") String game_no, Model model) {
		model.addAttribute("game_no", game_no);
		
		return "game/gameReadTest";
	}
	
	// 寃뚯엫 �젙蹂� (ajax濡� 媛��졇�삤湲곗슜)
	@PostMapping("/game_read")
	public String gameRead(@RequestParam("game_no") String game_no, Model model) {
		GameDTO dto = gameService.gameRead(game_no);
		model.addAttribute("dto", dto);
		model.addAttribute("imgList", gameMapper.getImages(game_no));
		return "game/game_read";
	}
	
	@GetMapping("gameDelete")
	public String gameDelete(@RequestParam("game_no") String game_no) {
		gameService.gameDelete(game_no);
		return "redirect:/admin_game_list";
	}
	
	@GetMapping("/gameSell")
	public String gameSell() {
		return "game/gameInfo";
	}
	

}
