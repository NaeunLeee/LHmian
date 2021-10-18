package com.lh.app.visit.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.lh.app.signIn.domain.GenerationVO;
import com.lh.app.visit.domain.GenerationCriteria;
import com.lh.app.visit.domain.VisitVO;

@Repository
public interface VisitMapper {
  
	// crud
	// 전체조회
	public List<VisitVO> getList(VisitVO vo);

	// 등록
	public int insert(VisitVO vo);

	// 수정
	public int update(VisitVO vo);

	// 삭제
	public int delete(VisitVO vo);

	// 세대리스트 불러오기
	public List<GenerationVO> generation(GenerationVO vo);
	
	// 전체 건수 카운트
	public int getOldCount();
}
