package com.frogame.www.service;

import java.util.List;
import java.util.Map;

import com.frogame.www.model.Criteria;
import com.frogame.www.model.GameDTO;

public interface GameService {

	void newInsert(GameDTO dto);

	List<GameDTO> getListPaging(Criteria cri);

	int getTotal();

	GameDTO gameRead(String game_no);

	List<GameDTO> gameSearch(String search);
	
	void saveImage(Map<String, Object> hmap);
}
