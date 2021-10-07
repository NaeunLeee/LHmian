package com.lh.app.facility.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lh.app.comm.domain.Criteria;
import com.lh.app.facility.domain.FacCriteria;
import com.lh.app.facility.domain.FacVO;
import com.lh.app.facility.domain.GxVO;
import com.lh.app.facility.domain.GymVO;
import com.lh.app.facility.domain.LibraryVO;
import com.lh.app.facility.mapper.FacMapper;
import com.lh.app.payment.domain.PaymentVO;

@Service
public class FacServiceImpl implements FacService {

	@Autowired FacMapper facMapper;
	
	
	//10/06 시작 ---------------------------------------
	@Override
	public List<FacVO> myFac(FacCriteria cri) {
		// TODO Auto-generated method stub
		return facMapper.myFac(cri);
	}
	
	@Override
	public int getTotalCount(FacVO vo) {
		// TODO Auto-generated method stub
		return facMapper.getTotalCount(vo);
	}
	
	//10-07 추가 (이나은) -------------------------------
	
	public List<GxVO> yogaTime() {
		return facMapper.yogaTime();
	}

	public List<GxVO> pilTime() {
		return facMapper.pilTime();
	}

	public List<GxVO> spinTime() {
		return facMapper.spinTime();
	}

	public GxVO gxRead(GxVO vo) {
		return facMapper.gxRead(vo);
	}

	public int gymInsert(GymVO vo) {
		return facMapper.gymInsert(vo);
	}

	public int libInsert(LibraryVO vo) {
		return facMapper.libInsert(vo);
	}
	public int payInsert(PaymentVO vo) {
		return facMapper.payInsert(vo);
	}

	
}
