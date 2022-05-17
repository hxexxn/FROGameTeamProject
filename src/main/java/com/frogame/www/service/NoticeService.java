package com.frogame.www.service;

import java.util.List;

import com.frogame.www.model.Criteria;
import com.frogame.www.model.NoticeDTO;

public interface NoticeService {
	
	//공지사항

	

	void noticeInsert(NoticeDTO dto);

	List<NoticeDTO> noticeList();

	NoticeDTO noticeRead(String notice_no);	

	void noticeViewCount(String notice_no);

	/* 게시판 총 갯수 */
	public int getTotal();
	
	/* 게시판 목록(페이징 적용) */
	public List<NoticeDTO> getListPaging(Criteria cri);

	List<NoticeDTO> noticeByCount();

	void noticeDelete(String notice_no);

	void noticeUpdate(NoticeDTO dto);

	List<NoticeDTO> noticeSearch(String search);

	

	
	
	

}
