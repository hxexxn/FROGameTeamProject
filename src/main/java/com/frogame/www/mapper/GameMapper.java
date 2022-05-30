package com.frogame.www.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.frogame.www.model.Criteria;
import com.frogame.www.model.GameDTO;
import com.frogame.www.model.ImgDTO;

@Mapper
public interface GameMapper {

	void newInsert(GameDTO dto);

	List<GameDTO> getListPaging(Criteria cri);

	int getTotal(Criteria cri);

	GameDTO gameRead(String game_no);

	void saveImage(Map<String, Object> hmap);

	List<GameDTO> admin_gameList(Criteria cri);

	void gameDelete(String game_no);

	void imgInsert(@Param("game_no") int i, @Param("file") byte[] img);

	ImgDTO getImage1(int game_no);

	List<ImgDTO> getImages(String game_no);

	List<GameDTO> hotGame();

	List<GameDTO> newGame();

	List<GameDTO> genreList(Criteria cri);

	int tagTotal(Criteria cri);

	void gameSellCount(String i);


}
