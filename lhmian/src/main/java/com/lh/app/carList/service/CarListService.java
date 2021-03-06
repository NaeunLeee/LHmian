package com.lh.app.carList.service;

import java.util.List;

import com.lh.app.carList.domain.CarListCriteria;
import com.lh.app.member.domain.MemberInfoVO;
import com.lh.app.signIn.domain.CarListVO;

public interface CarListService {

	//전체조회
	public List<CarListVO> getList(CarListCriteria cri);
	public int getTotalCount(CarListCriteria cri);
	
	//차량삭제
	public int delete(CarListVO vo);
	
	//동호수로 차량 조회 (10/13 추가: 이나은)
	public List<CarListVO> carByHouseInfo (MemberInfoVO vo);
	
	//차량등록 (10/14 추가: 이나은)
	public int insert(CarListVO vo);
}
