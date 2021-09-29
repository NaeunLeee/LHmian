package com.lh.app.energy.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lh.app.energy.domain.EnergyVO;
import com.lh.app.energy.mapper.EnergyMapper;

@Service
public class EnergyserviceImpl implements EnergyService {

	@Autowired EnergyMapper energyMapper;
	@Override
	public List<EnergyVO> getList(EnergyVO vo) {
		return energyMapper.getList(vo);
	}

	@Override
	public EnergyVO read(EnergyVO vo) {
		return energyMapper.read(vo);
	}

}
