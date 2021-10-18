package com.lh.app.lostFound.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.lh.app.lostFound.domian.LostFoundVO;

@Repository
public interface LostFoundMapper {
	// CRUD
	// 등록
	public int insert(LostFoundVO vo);

	// 수정
	public int update(LostFoundVO vo);

	// 로우 삭제
	public int delete();

	// 파일만 삭제
	public int delFile(String filePath, String string);

	// 전체조회
	public List<LostFoundVO> getList(LostFoundVO vo);

	// 단건조회
	public LostFoundVO read(LostFoundVO vo);

	// 토탈 카운트
	public int getTotalLost();
}
