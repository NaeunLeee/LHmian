package com.lh.app.notice.service;

import java.util.List;

import com.lh.app.notice.domain.NoticeCriteria;
import com.lh.app.notice.domain.NoticeVO;

public interface NoticeService {
	
	//전체조회
	public List<NoticeVO> getList(NoticeCriteria cri);
	public int getTotalCount(NoticeCriteria cri);
	
	//단건조회
	public NoticeVO read(NoticeVO vo);
	
	//등록
	public int insert(NoticeVO vo);
	
	//삭제
	public int delete(NoticeVO vo);
	
	//수정
	public int update(NoticeVO vo);
}
