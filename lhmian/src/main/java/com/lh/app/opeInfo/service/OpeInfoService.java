package com.lh.app.opeInfo.service;

import java.util.List;

import com.lh.app.opeInfo.domain.OpeInfoCriteria;
import com.lh.app.opeInfo.domain.OpeInfoVO;

public interface OpeInfoService {


	// 전체 조회
	public List<OpeInfoVO> getList(OpeInfoCriteria cri);
	public int getTotalCount(OpeInfoCriteria cri);
	
	// 단건 조회
	public OpeInfoVO read(OpeInfoVO vo);
	public OpeInfoVO readByFileid(String uuid);
	
	// 등록
	public int insert(OpeInfoVO vo);
	
	// 수정
	public int update(OpeInfoVO vo);
	
	// 삭제
	public int delete(OpeInfoVO vo);
	
	// 파일 삭제
	public int deleteFile(OpeInfoVO vo);
	
}
