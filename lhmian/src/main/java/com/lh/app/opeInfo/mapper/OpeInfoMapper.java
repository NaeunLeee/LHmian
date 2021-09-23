package com.lh.app.opeInfo.mapper;

import java.util.List;

import com.lh.app.opeInfo.domain.OpeInfoVO;

public interface OpeInfoMapper {

	// 전체 조회
	public List<OpeInfoVO> getList();
	
	// 단건 조회
	public OpeInfoVO read(OpeInfoVO vo);
	
	// 등록
	public int insert(OpeInfoVO vo);
	
	// 수정
	
	
}
