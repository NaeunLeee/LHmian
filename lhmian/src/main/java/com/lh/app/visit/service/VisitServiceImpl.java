package com.lh.app.visit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lh.app.signIn.domain.GenerationVO;
import com.lh.app.visit.domain.VisitVO;
import com.lh.app.visit.mapper.VisitMapper;

@Service
public class VisitServiceImpl implements VisitService {

	@Autowired
	VisitMapper visitMapper;

	@Override
	public List<VisitVO> getList(VisitVO vo) {
		return visitMapper.getList(vo);
	}

	@Override
	public int insert(VisitVO vo) {
		return visitMapper.insert(vo);
	}

	@Override
	public int update(VisitVO vo) {
		return visitMapper.update(vo);
	}

	@Override
	public int delete(VisitVO vo) {
		return visitMapper.delete(vo);
	}

	@Override
	public List<GenerationVO> generation(GenerationVO vo) {
		return visitMapper.generation(vo);
	}

	@Override
	public int getOldCount() {
		return visitMapper.getOldCount();
	}

}
