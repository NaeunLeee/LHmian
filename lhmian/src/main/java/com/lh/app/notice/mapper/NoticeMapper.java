package com.lh.app.notice.mapper;

import java.util.List;

import com.lh.app.notice.domain.NoticeVO;

public interface NoticeMapper {
	public List<NoticeVO> getList();
	public NoticeVO read(NoticeVO vo);
	public int insert(NoticeVO vo);
	public int delete(NoticeVO vo);
	public int update(NoticeVO vo);
}
