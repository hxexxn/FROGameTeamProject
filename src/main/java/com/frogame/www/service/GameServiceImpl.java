package com.frogame.www.service;

import java.util.List;

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
	
	// 게시판 목록 (페이징 적용) 
	@Override
	public List<GameDTO> getListPaging(Criteria cri) {
		
		return gameMapper.getListPaging(cri);
	}

	// 게시물 총 갯수 
	@Override
	public int getTotal() {
		return gameMapper.getTotal();
	}
	
	// 게임 상세 정보 
	@Override
	public GameDTO gameRead(String game_no) {
		return gameMapper.gameRead(game_no);
	}
	
	// 게임 검색 
	@Override
	public List<GameDTO> gameSearch(String search) {
		return gameMapper.gameSearch(search);
	}

	
	

}
