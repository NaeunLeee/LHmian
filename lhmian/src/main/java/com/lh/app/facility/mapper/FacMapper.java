package com.lh.app.facility.mapper;

import java.util.List;

import com.lh.app.comm.domain.Criteria;
import com.lh.app.facility.domain.FacCriteria;
import com.lh.app.facility.domain.FacVO;

public interface FacMapper {
	
	
	//10/06 시작 -------------------------------------
	//시설 이용 내역
	public List<FacVO> myFac(FacCriteria cri);
	
	public int getTotalCount(FacVO vo);
	
}
