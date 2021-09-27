package com.lh.app.notice.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lh.app.notice.domain.NoticeCriteria;
import com.lh.app.notice.domain.NoticeVO;
import com.lh.app.notice.mapper.NoticeMapper;

@Service
public class NoticeServiceImpl implements NoticeService{

	@Autowired
	NoticeMapper mapper;

	//전체조회
	@Override
	public List<NoticeVO> getList(NoticeCriteria cri) {
		// TODO Auto-generated method stub
		return mapper.getList(cri);
	}
	public int getTotalCount(NoticeCriteria cri) {
		return mapper.getTotalCount(cri);
	}
	
	//단건조회
	@Override
	public NoticeVO read(NoticeVO vo) {
		// TODO Auto-generated method stub
		return mapper.read(vo);
	}

	//등록
	@Override
	public int insert(NoticeVO vo) {
		// TODO Auto-generated method stub
		return mapper.insert(vo);
	}

	//삭제
	@Override
	public int delete(NoticeVO vo) {
		// TODO Auto-generated method stub
		return mapper.delete(vo);
	}

	//수정
	@Override
	public int update(NoticeVO vo) {
		// TODO Auto-generated method stub
		return mapper.update(vo);
	}


	
	
}
