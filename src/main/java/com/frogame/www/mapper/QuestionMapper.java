package com.frogame.www.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.frogame.www.model.Criteria;
import com.frogame.www.model.QuestionDTO;

@Mapper
public interface QuestionMapper {

	void questionInsert(QuestionDTO dto);

	List<QuestionDTO> questionList();

	QuestionDTO questionRead(String question_no);
	
	void questionViewCount(String question_no);
	
	public int getTotal(Criteria cri);

	public List<QuestionDTO> getListPaging(Criteria cri);

	List<QuestionDTO> questionByCount();

	void questionDelete(String question_no);

	void questionUpdate(QuestionDTO dto);

	List<QuestionDTO> admin_questionList(Criteria cri);

	

	
	


	

	
	

	

	
	

}
