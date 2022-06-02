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
	
	@Override
	public List<GameDTO> getListPaging(Criteria cri) {
		return gameMapper.getListPaging(cri);
	}

	@Override
	public int getTotal(Criteria cri) {
		return gameMapper.getTotal(cri);
	}
	
	@Override
	public GameDTO gameRead(String game_no) {
		return gameMapper.gameRead(game_no);
	}

	
	/*
	 * @Override public void saveImage(Map<String, Object> hmap) {
	 * gameMapper.saveImage(hmap);
	 * 
	 * }
	 */

	@Override
	public void gameDelete(String game_no) {
		gameMapper.gameDelete(game_no);
	}


	@Override
	public void imgInsert(int i, byte[] img) {
		gameMapper.imgInsert(i, img);		
	}
	
	// 게임 목록 출력
	@Override
	public List<GameDTO> admin_gameList(Criteria cri) {
		return gameMapper.admin_gameList(cri);
	}

	@Override
	public List<GameDTO> hotGame() {
		return gameMapper.hotGame();
	}

	@Override
	public List<GameDTO> newGame() {
		return gameMapper.newGame();
	}

	@Override
	public List<GameDTO> genreList(Criteria cri) {
		return gameMapper.genreList(cri);
	}

	@Override
	public int tagTotal(Criteria cri) {
		return gameMapper.tagTotal(cri);
	}

	@Override
	public List<GameDTO> freeGame() {
		return gameMapper.freeGame();
	}



}
