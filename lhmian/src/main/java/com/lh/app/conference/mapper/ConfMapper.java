package com.lh.app.conference.mapper;

import java.util.List;

import com.lh.app.conference.domain.ConfCriteria;
import com.lh.app.conference.domain.ConfVO;
import com.lh.app.conference.domain.MyConfCriteria;

public interface ConfMapper {

	// 전체 조회
	public List<ConfVO> getList(ConfCriteria cri);
	public int getTotalCount(ConfCriteria cri);
	
	// 단건 조회
	public ConfVO read(ConfVO vo);
	
	// 작성자 게시글 전체 조회
	public List<ConfVO> listByWriter(MyConfCriteria cri);
	public int totalByWriter(MyConfCriteria cri);
	
	// 등록
	public int insert(ConfVO vo);
	
	// 수정
	public int update(ConfVO vo);
	
	// 삭제
	public int delete(ConfVO vo);
	
	// 조회수 올리기
	public int hitCount(ConfVO vo);
	
}
