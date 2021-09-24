package com.lh.app.lostFound.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lh.app.lostFound.domian.LostFoundVO;
import com.lh.app.lostFound.mapper.LostFoundMapper;

@Service
public class LostFoundServiceImpl implements LostFoundService {

	@Autowired LostFoundMapper lostFoundMapper;
	
	@Override
	public int insert(LostFoundVO vo) {
		return lostFoundMapper.insert(vo);
	}

	@Override
	public int update(LostFoundVO vo) {
		return lostFoundMapper.update(vo);
	}

	@Override
	public int delete(LostFoundVO vo) {
		return lostFoundMapper.delete(vo);
	}

	@Override
	public List<LostFoundVO> getList(LostFoundVO vo) {
		return lostFoundMapper.getList(vo);
	}


}