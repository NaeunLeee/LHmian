package com.lh.app.notice.service;

import java.util.List;

import com.lh.app.notice.domain.NoticeVO;

public interface NoticeService {
	public List<NoticeVO> getList();
	public NoticeVO read(NoticeVO vo);
	public int insert(NoticeVO vo);
	public int delete(NoticeVO vo);
	public int update(NoticeVO vo);
}
