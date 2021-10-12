package com.lh.app.visit.service;

import java.util.List;

import com.lh.app.signIn.domain.GenerationVO;
import com.lh.app.visit.domain.VisitVO;

public interface VisitService {
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
		
		//세대리스트 불러오기
		public List<GenerationVO> generation(GenerationVO vo);
}
