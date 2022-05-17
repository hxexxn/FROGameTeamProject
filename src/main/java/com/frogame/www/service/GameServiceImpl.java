package com.frogame.www.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.frogame.www.mapper.GameMapper;
import com.frogame.www.model.Criteria;
import com.frogame.www.model.GameDTO;
import com.frogame.www.model.ImgDTO;

@Service
public class GameServiceImpl implements GameService{
	
	@Autowired
	private GameMapper gameMapper;

	@Override
	public void newInsert(GameDTO dto) {
		gameMapper.newInsert(dto);
	}
	
	// 寃뚯떆�뙋 紐⑸줉 (�럹�씠吏� �쟻�슜) 
	@Override
	public List<GameDTO> getListPaging(Criteria cri) {
		return gameMapper.getListPaging(cri);
	}

	// 寃뚯떆臾� 珥� 媛��닔 
	@Override
	public int getTotal(Criteria cri) {
		return gameMapper.getTotal(cri);
	}
	
	// 寃뚯엫 �긽�꽭 �젙蹂� 
	@Override
	public GameDTO gameRead(String game_no) {
		return gameMapper.gameRead(game_no);
	}

	@Override
	public void saveImage(Map<String, Object> hmap) {
		gameMapper.saveImage(hmap);

	}

	@Override
	public void gameDelete(String game_no) {
		gameMapper.gameDelete(game_no);
	}


	@Override
	public void imgInsert(int i, byte[] img) {
		gameMapper.imgInsert(i, img);		
	}

	@Override
	public ImgDTO imgRead(String game_no) {
		return gameMapper.getImage(game_no);
	}
	// 게임 목록 출력
	@Override
	public List<GameDTO> admin_gameList() {
		return gameMapper.admin_gameList();
	}


}
