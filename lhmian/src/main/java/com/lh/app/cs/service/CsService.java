package com.lh.app.cs.service;

import java.util.List;

import com.lh.app.cs.domain.CsCriteria;
import com.lh.app.cs.domain.CsVO;
import com.lh.app.cs.domain.MyCsCriteria;

public interface CsService {

	// 전체 조회
	public List<CsVO> getList(CsCriteria cri);

	public int getTotalCount(CsCriteria cri);

	// 단건 조회
	public CsVO read(CsVO vo);
	
	// id로 게시글 전체 조회
	public List<CsVO> listByWriter(MyCsCriteria cri);
	public int totalByWriter(MyCsCriteria cri);	

	// 마이리스트
	public List<CsVO> myList(CsVO vo);

	// 게시글 등록
	public int insertBoard(CsVO vo);

	// 게시글 수정
	public int updateBoard(CsVO vo);

	// 게시글 삭제
	public int deleteBoard(CsVO vo);

	// 답변 등록
	public int insertAnswer(CsVO vo);

	// 답변 수정
	public int updateAnswer(CsVO vo);

}
