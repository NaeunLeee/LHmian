package com.lh.app.carList.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lh.app.carList.domain.CarListCriteria;
import com.lh.app.carList.mapper.CarListMapper;
import com.lh.app.member.domain.MemberInfoVO;
import com.lh.app.signIn.domain.CarListVO;

@Service
public class CarListServiceImpl implements CarListService{

	@Autowired
	CarListMapper mapper;

	//전체조회
	public List<CarListVO> getList(CarListCriteria cri) {
		return mapper.getList(cri);
	}
	public int getTotalCount(CarListCriteria cri) {
		return mapper.getTotalCount(cri);
	}
	public int delete(CarListVO vo) {
		return mapper.delete(vo);
	}
	
	//동호수로 차량 조회 (10/13 추가: 이나은)
	public List<CarListVO> carByHouseInfo(MemberInfoVO vo) {
		return mapper.carByHouseInfo(vo);
	}
	
}
