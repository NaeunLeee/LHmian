package com.lh.app.facility.service;

import java.util.List;

import com.lh.app.facility.domain.FacCriteria;
import com.lh.app.facility.domain.FacVO;

public interface FacService {

	// 시설 이용 내역
	//10/06 수정 -----------------------------------------------
	public List<FacVO> myFac(FacCriteria cri);

	
	public int getTotalCount(FacVO vo);
}
