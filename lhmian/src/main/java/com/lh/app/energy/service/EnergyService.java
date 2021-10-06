package com.lh.app.energy.service;

import java.util.List;

import com.lh.app.energy.domain.EnergyVO;

public interface EnergyService {
	// 전체조회-세대별
	public List<EnergyVO> getList(EnergyVO vo);

	// 단건조회
	public EnergyVO read(EnergyVO vo);

	// 전체조회-전체(관리자)
	public List<EnergyVO> admList(EnergyVO vo);
}
