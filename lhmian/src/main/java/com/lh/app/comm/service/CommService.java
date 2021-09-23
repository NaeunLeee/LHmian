package com.lh.app.comm.service;

import java.util.List;

import com.lh.app.comm.domain.CommVO;
import com.lh.app.comm.domain.Criteria;

public interface CommService {
	// CRUD
		// 등록
		public int insert(CommVO vo);

		// 수정
		public int update(CommVO vo);

		// 삭제
		public int remove(CommVO vo);

		// 단건 조회
		public CommVO read(CommVO vo);

		// 전체 조회
		public List<CommVO> getList(Criteria cri);
		
		public int getTotalCount(Criteria cri);
		
		//댓글 수 업데이트
		public void updateReplycnt();
}
