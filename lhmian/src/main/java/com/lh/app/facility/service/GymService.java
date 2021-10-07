package com.lh.app.facility.service;

import java.util.List;

import com.lh.app.facility.domain.GxVO;
import com.lh.app.facility.domain.GymVO;

public interface GymService {

	// 요가 시간표
	public List<GxVO> yogaTime();
	// 필라테스 시간표
	public List<GxVO> pilTime();
	// 스피닝 시간표
	public List<GxVO> spinTime();
	
	// GX 단건 조회
	public GxVO gxRead(GxVO vo);
	
	// 헬스장 결제 시 db 입력
	public int gxRegister(GymVO vo);
}
