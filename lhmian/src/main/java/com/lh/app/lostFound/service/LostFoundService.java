package com.lh.app.lostFound.service;

import java.util.List;

import com.lh.app.lostFound.domian.LostFoundVO;


public interface LostFoundService {
	//CRUD
	// 등록
	public int insert(LostFoundVO vo);

	// 수정
	public int update(LostFoundVO vo);
	
	//삭제
	public int delete(LostFoundVO vo);

	// 전체조회
	public List<LostFoundVO> getList(LostFoundVO vo);
	
	//단건조회
	public LostFoundVO read(LostFoundVO vo);
}
