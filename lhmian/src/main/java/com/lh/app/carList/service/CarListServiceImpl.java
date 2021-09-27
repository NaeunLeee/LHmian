package com.lh.app.carList.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lh.app.carList.domain.CarListCriteria;
import com.lh.app.carList.mapper.CarListMapper;
import com.lh.app.signIn.domain.CarListVO;

@Service
public class CarListServiceImpl implements CarListService{

	@Autowired
	CarListMapper mapper;

	//전체조회
	@Override
	public List<CarListVO> getList(CarListCriteria cri) {
		// TODO Auto-generated method stub
		return mapper.getList(cri);
	}
	@Override
	public int getTotalCount(CarListCriteria cri) {
		// TODO Auto-generated method stub
		return mapper.getTotalCount(cri);
	}

	@Override
	public int delete(CarListVO vo) {
		// TODO Auto-generated method stub
		return mapper.delete(vo);
	}
	
}
