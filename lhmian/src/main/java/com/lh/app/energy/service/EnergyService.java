package com.lh.app.energy.service;

import java.util.List;

import com.lh.app.energy.domain.EnergyVO;

public interface EnergyService {
	// 전체조회-금년
	public List<EnergyVO> thisYear(EnergyVO vo);

	// 전체조회-작년
	public List<EnergyVO> lastYear(EnergyVO vo);

	// 전체조회-전체(관리자)
	public List<EnergyVO> admList(EnergyVO vo);

	public int getTotalCount(EnergyVO vo);
}
