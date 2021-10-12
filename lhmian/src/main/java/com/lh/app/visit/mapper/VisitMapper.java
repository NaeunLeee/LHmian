package com.lh.app.visit.mapper;

import java.util.List;

import com.lh.app.visit.domain.VisitCriteria;
import com.lh.app.visit.domain.VisitVO;

public interface VisitMapper {

	// crud
	// 전체조회
	public List<VisitVO> getList(VisitVO vo);
	//public int getTotalCount(VisitCriteria cri);
	
	//등록
	public int insert(VisitVO vo);

	// 수정
	public int update(VisitVO vo);

	// 삭제
	public int delete(VisitVO vo);
}
