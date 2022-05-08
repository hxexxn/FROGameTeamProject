package com.frogame.www.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.frogame.www.mapper.GameMapper;
import com.frogame.www.model.Criteria;
import com.frogame.www.model.GameDTO;

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
	public int getTotal() {
		return gameMapper.getTotal();
	}
	
	// 寃뚯엫 �긽�꽭 �젙蹂� 
	@Override
	public GameDTO gameRead(String game_no) {
		return gameMapper.gameRead(game_no);
	}
	
	// 寃뚯엫 寃��깋 
	@Override
	public List<GameDTO> gameSearch(String search) {
		return gameMapper.gameSearch(search);
	}

	@Override
	public void saveImage(Map<String, Object> hmap) {
		gameMapper.saveImage(hmap);

	}
	

}
