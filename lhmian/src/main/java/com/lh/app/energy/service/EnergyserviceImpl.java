package com.lh.app.energy.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lh.app.energy.domain.EnergyVO;
import com.lh.app.energy.mapper.EnergyMapper;

@Service
public class EnergyserviceImpl implements EnergyService {

	@Autowired
	EnergyMapper energyMapper;

	@Override
	public List<EnergyVO> thisYear(String columnName) {
		return energyMapper.thisYear(columnName);
	}

	@Override
	public List<EnergyVO> lastYear(EnergyVO vo) {
		return energyMapper.lastYear(vo);
	}

	@Override
	public List<EnergyVO> admList(EnergyVO vo) {
		return energyMapper.admList(vo);
	}

	@Override
	public int getTotalCount(EnergyVO vo) {
		return energyMapper.getTotalCount(vo);
	}
}
