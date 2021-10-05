package com.lh.app.facility.service;

import java.util.List;

import com.lh.app.comm.domain.Criteria;
import com.lh.app.facility.domain.FacVO;

//시설 이용 내역 10/05 추가
public interface FacService {

	// 도서실 이용 내역
	public List<FacVO> readlib(Criteria cri);

	// 헬스 이용 내역
	public List<FacVO> readgym(Criteria cri);
	
	public int getTotalCount(Criteria cri);
}
