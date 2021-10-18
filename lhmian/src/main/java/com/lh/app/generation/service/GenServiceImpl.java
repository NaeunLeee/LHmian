package com.lh.app.generation.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lh.app.generation.mapper.GenMapper;
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

}
