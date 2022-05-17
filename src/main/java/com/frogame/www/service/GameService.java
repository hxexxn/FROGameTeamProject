package com.frogame.www.service;

import java.util.List;
import java.util.Map;

import com.frogame.www.model.Criteria;
import com.frogame.www.model.GameDTO;
import com.frogame.www.model.ImgDTO;

public interface GameService {

	void newInsert(GameDTO dto);

	List<GameDTO> getListPaging(Criteria cri);

	int getTotal(Criteria cri);

	GameDTO gameRead(String game_no);
	
	void saveImage(Map<String, Object> hmap);

	List<GameDTO> admin_gameList();

	void gameDelete(String game_no);

	void imgInsert(int i, byte[] img);

	ImgDTO imgRead(String game_no);


}
