package com.lh.app.facility.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lh.app.comm.domain.Criteria;
import com.lh.app.facility.domain.FacCriteria;
import com.lh.app.facility.domain.FacVO;
import com.lh.app.facility.mapper.FacMapper;

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
	
}
