package com.frogame.www.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.frogame.www.model.Criteria;
import com.frogame.www.model.NoticeDTO;

@Mapper
public interface NoticeMapper {

	void noticeInsert(NoticeDTO dto);

	List<NoticeDTO> noticeList();

	NoticeDTO noticeRead(String notice_no);

	void noticeViewCount(String notice_no);

	public int getTotal();

	public List<NoticeDTO> getListPaging(Criteria cri);

	List<NoticeDTO> noticeByCount();

	void noticeDelete(String notice_no);

	void noticeUpdate(NoticeDTO dto);

	List<NoticeDTO> noticeSearch(String search);

	List<NoticeDTO> admin_noticeList();

	

	


}
