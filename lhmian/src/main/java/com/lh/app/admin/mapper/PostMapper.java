package com.lh.app.admin.mapper;

import java.util.List;

import com.lh.app.admin.domain.PostVO;
import com.lh.app.comm.domain.Criteria;

public interface PostMapper {
	
		// 등록
		public int insert(PostVO vo);

		// 수정
		public int update(PostVO vo);
		
		// 단건 조회
		public PostVO read(PostVO vo);
		
		// 전체 조회
		public List<PostVO> getList(Criteria cri);
		
		public int getTotalCount(Criteria cri);
		
		public int delete(PostVO vo);

		
}
