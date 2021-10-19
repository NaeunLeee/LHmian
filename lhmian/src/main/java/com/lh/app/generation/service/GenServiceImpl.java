package com.lh.app.generation.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lh.app.fee.domain.ManagementFeeVO;
import com.lh.app.generation.mapper.GenMapper;
import com.lh.app.signIn.domain.GenerationVO;
import com.lh.app.signIn.domain.MemberVO;

@Service
public class GenServiceImpl implements GenService {

	@Autowired
	GenMapper genMapper;
	
	public List<MemberVO> getList() {
		return genMapper.getList();
	}

	public List<MemberVO> familyList(MemberVO vo) {
		return genMapper.familyList(vo);
	}
	
	public MemberVO ownerInfo(GenerationVO vo) {
		return genMapper.ownerInfo(vo);
	}

	public GenerationVO selectGen(GenerationVO vo) {
		return genMapper.selectGen(vo);
	}

	public int makeNull(GenerationVO vo) {
		return genMapper.makeNull(vo);
	}
	
	public int deleteFamily(GenerationVO vo) {
		return genMapper.deleteFamily(vo);
	}

	public int verifyGen(GenerationVO vo) {
		return genMapper.verifyGen(vo);
	}

	public int reVerifyGen(GenerationVO vo) {
		return genMapper.reVerifyGen(vo);
	}

	public List<ManagementFeeVO> feeList(ManagementFeeVO vo) {
		return genMapper.feeList(vo);
	}


	
	

}
