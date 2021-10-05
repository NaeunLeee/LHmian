package com.lh.app.facility.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lh.app.comm.domain.Criteria;
import com.lh.app.facility.domain.FacVO;
import com.lh.app.facility.mapper.FacMapper;

@Service
public class FacServiceImpl implements FacService {

	@Autowired FacMapper facMapper;
	
	@Override
	public List<FacVO> readlib(Criteria cri) {
		// TODO Auto-generated method stub
		return facMapper.readlib();
	}

	@Override
	public List<FacVO> readgym(Criteria cri) {
		// TODO Auto-generated method stub
		return facMapper.readgym();
	}

	@Override
	public int getTotalCount(Criteria cri) {
		// TODO Auto-generated method stub
		return facMapper.getTotalCount(cri);
	}
	
	

}
