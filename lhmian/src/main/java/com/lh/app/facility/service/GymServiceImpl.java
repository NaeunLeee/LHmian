package com.lh.app.facility.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lh.app.facility.domain.GxVO;
import com.lh.app.facility.domain.GymVO;
import com.lh.app.facility.mapper.GymMapper;

@Service
public class GymServiceImpl implements GymService {

	@Autowired
	GymMapper gymMapper;
	
	public List<GxVO> yogaTime() {
		return gymMapper.yogaTime();
	}

	public List<GxVO> pilTime() {
		return gymMapper.pilTime();
	}

	public List<GxVO> spinTime() {
		return gymMapper.spinTime();
	}

	public GxVO gxRead(GxVO vo) {
		return gymMapper.gxRead(vo);
	}

	public int gxRegister(GymVO vo) {
		return gymMapper.gxRegister(vo);
	}

}
