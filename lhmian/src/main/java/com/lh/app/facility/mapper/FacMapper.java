package com.lh.app.facility.mapper;

import java.util.List;

import com.lh.app.comm.domain.Criteria;
import com.lh.app.facility.domain.FacVO;

//시설 예약 내역 10/05 추가
public interface FacMapper {
	
	//도서실 이용 내역
	public List<FacVO> readlib();
	
	//헬스 이용 내역
	public List<FacVO> readgym();
	
	public int getTotalCount(Criteria cri);
}
