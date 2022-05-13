package com.frogame.www.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.frogame.www.mapper.NoticeMapper;
import com.frogame.www.model.Criteria;
import com.frogame.www.model.NoticeDTO;

@Service
public class NoticeServiceImpl implements NoticeService{

	@Autowired
	private NoticeMapper mapper;
	
	@Override
	public void noticeInsert(NoticeDTO dto) {
		mapper.noticeInsert(dto);		
		
	}	
	
	@Override
	public List<NoticeDTO> noticeList() {
		return mapper.noticeList();
	}
	
	@Override
	public NoticeDTO noticeRead(String notice_no) {
		return mapper.noticeRead(notice_no);
	}	

	@Override
	public void noticeViewCount(String notice_no) {
		mapper.noticeViewCount(notice_no);
		
	}	

	@Override
	public List<NoticeDTO> noticeByCount() {
		return mapper.noticeByCount();
	}	

	@Override
	public List<NoticeDTO> getListPaging(Criteria cri) {
		 return mapper.getListPaging(cri);
	}
	
@Override
	public int getTotal() {
		  return mapper.getTotal();
	}

@Override
public void noticeDelete(String notice_no) {
	mapper.noticeDelete(notice_no);
	
}

@Override
public void noticeUpdate(NoticeDTO dto) {
	mapper.noticeUpdate(dto);
	
}

@Override
public List<NoticeDTO> noticeSearch(String search) {
	return mapper.noticeSearch(search);
}




	
}
