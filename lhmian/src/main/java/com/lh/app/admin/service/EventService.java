package com.lh.app.admin.service;

import java.util.List;

import com.lh.app.admin.domain.EventVO;
import com.lh.app.comm.domain.Criteria;

public interface EventService {

	// CRUD
	// 등록
	public int insert(EventVO vo);

	// 수정
	public int update(EventVO vo);

	// 삭제
	public int delete(Long eventNo);

	// 단건 조회
	public EventVO read(EventVO vo);

	// 전체 조회
	public List<EventVO> getList();

	// 전체 조회
	public List<EventVO> getListview(Criteria cri);
	
	// 게시글 수
	public int getTotalCount(Criteria cri);
}
