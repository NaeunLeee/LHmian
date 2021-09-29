package com.lh.app.facility.service;

import java.util.List;

import com.lh.app.facility.domain.GxVO;

public interface GymService {

	// 요가 시간표
	public List<GxVO> yogaTime();
	// 필라테스 시간표
	public List<GxVO> pilTime();
	// 스피닝 시간표
	public List<GxVO> spinTime();
	
}
