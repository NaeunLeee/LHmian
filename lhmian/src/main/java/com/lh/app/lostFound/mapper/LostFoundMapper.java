package com.lh.app.lostFound.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.lh.app.lostFound.domian.LostFoundVO;

@Repository
public interface LostFoundMapper {
	// CRUD
	// 등록
	public int insert(LostFoundVO vo);

	// 수정
	public int update(LostFoundVO vo);
	
	//삭제
	public int delete(LostFoundVO vo);

	// 전체조회
	public List<LostFoundVO> getList(LostFoundVO vo);
}
