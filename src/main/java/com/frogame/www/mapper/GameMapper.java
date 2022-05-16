package com.frogame.www.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.frogame.www.model.Criteria;
import com.frogame.www.model.GameDTO;

@Mapper
public interface GameMapper {

	void newInsert(GameDTO dto);

	List<GameDTO> getListPaging(Criteria cri);

	int getTotal(Criteria cri);

	GameDTO gameRead(String game_no);

	void saveImage(Map<String, Object> hmap);

	void gameDelete(String game_no);

}
