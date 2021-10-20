package com.lh.app.energy.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.lh.app.energy.domain.EnergyVO;

@Repository
public interface EnergyMapper {
	// 전체조회-금년
	public List<EnergyVO> thisYear(EnergyVO vo);

	// 전체조회-작년
	public List<EnergyVO> lastYear(EnergyVO vo);

	// 전체조회-전체(관리자)
	public List<EnergyVO> admList(EnergyVO vo);

	public int getTotalCount(EnergyVO vo);
}
