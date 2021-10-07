package com.lh.app.facility.service;

import java.util.List;

import com.lh.app.facility.domain.FacCriteria;
import com.lh.app.facility.domain.FacVO;
import com.lh.app.facility.domain.GxVO;
import com.lh.app.facility.domain.GymVO;
import com.lh.app.facility.domain.LibraryVO;
import com.lh.app.payment.domain.PaymentVO;

public interface FacService {

	// 시설 이용 내역
	//10/06 수정 -----------------------------------------------
	public List<FacVO> myFac(FacCriteria cri);

	
	public int getTotalCount(FacVO vo);
	
	//10-07 추가 (이나은) -------------------------------------
	
	// 요가 시간표
	public List<GxVO> yogaTime();
	// 필라테스 시간표
	public List<GxVO> pilTime();
	// 스피닝 시간표
	public List<GxVO> spinTime();
	
	// GX 단건 조회
	public GxVO gxRead(GxVO vo);
	
	// 결제 시 db 입력
	public int gymInsert(GymVO vo);
	public int libInsert(LibraryVO vo);
	public int payInsert(PaymentVO vo);
	
	
	
}
