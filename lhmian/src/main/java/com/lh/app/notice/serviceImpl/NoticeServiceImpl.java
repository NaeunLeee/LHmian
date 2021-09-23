package com.lh.app.notice.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lh.app.notice.domain.NoticeVO;
import com.lh.app.notice.mapper.NoticeMapper;
import com.lh.app.notice.service.NoticeService;

@Service
public class NoticeServiceImpl implements NoticeService{

	@Autowired
	NoticeMapper mapper;

	@Override
	public List<NoticeVO> getList() {
		return mapper.getList();
	}

	@Override
	public NoticeVO read(NoticeVO vo) {
		// TODO Auto-generated method stub
		return mapper.read(vo);
	}

	@Override
	public int insert(NoticeVO vo) {
		// TODO Auto-generated method stub
		return mapper.insert(vo);
	}

	@Override
	public int delete(NoticeVO vo) {
		// TODO Auto-generated method stub
		return mapper.delete(vo);
	}

	@Override
	public int update(NoticeVO vo) {
		// TODO Auto-generated method stub
		return mapper.update(vo);
	}
	
	
}
