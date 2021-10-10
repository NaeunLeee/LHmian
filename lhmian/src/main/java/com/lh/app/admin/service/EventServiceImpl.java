package com.lh.app.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lh.app.admin.domain.EventVO;
import com.lh.app.admin.mapper.EventMapper;
import com.lh.app.comm.domain.Criteria;

@Service
public class EventServiceImpl implements EventService{
	
	@Autowired EventMapper eventMapper;
	
	// 10/01 return 값 수정
	
	@Override
	public int insert(EventVO vo) {
		// TODO Auto-generated method stub
		return eventMapper.insert(vo);
	}

	@Override
	public int update(EventVO vo) {
		// TODO Auto-generated method stub
		return eventMapper.update(vo);
	}

	@Override
	public int delete(Long eventNo) {
		// TODO Auto-generated method stub
		return eventMapper.delete(eventNo);
	}

	@Override
	public EventVO read(EventVO vo) {
		// TODO Auto-generated method stub
		return eventMapper.read(vo);
	}

	@Override
	public List<EventVO> getList() {
		// TODO Auto-generated method stub
		return eventMapper.getList();
	}
	
	
	// 10/09 추가
	@Override
	public List<EventVO> getListview(Criteria cri) {
		// TODO Auto-generated method stub
		return eventMapper.getListview(cri);
	}

	@Override
	public int getTotalCount(Criteria cri) {
		// TODO Auto-generated method stub
		return eventMapper.getTotalCount(cri);
	}


}
