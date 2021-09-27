package com.lh.app.conference.service;

import java.util.List;

import com.lh.app.conference.domain.ConfCriteria;
import com.lh.app.conference.domain.ConfVO;

public interface ConfService {

	// 전체 조회
	public List<ConfVO> getList(ConfCriteria cri);
	public int getTotalCount(ConfCriteria cri);
	
	// 단건 조회
	public ConfVO read(ConfVO vo);
	
	// 등록
	public int insert(ConfVO vo);
	
	// 수정
	public int update(ConfVO vo);
	
	// 삭제
	public int delete(ConfVO vo);
	
}
