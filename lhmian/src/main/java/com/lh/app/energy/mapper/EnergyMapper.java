package com.lh.app.energy.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.lh.app.energy.domain.EnergyVO;

@Repository
public interface EnergyMapper {
	// 전체조회
	public List<EnergyVO> getList(EnergyVO vo);

	// 단건조회
	public EnergyVO read(EnergyVO vo);
}
