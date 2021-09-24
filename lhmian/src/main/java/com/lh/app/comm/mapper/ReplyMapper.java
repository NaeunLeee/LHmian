package com.lh.app.comm.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.lh.app.comm.domain.Criteria;
import com.lh.app.comm.domain.ReplyVO;

public interface ReplyMapper {
	
	//전체조회
	public List<ReplyVO> getList(@Param("cri") Criteria cri,@Param("commNo")  Long commNo);
	
	//단건조회
	public ReplyVO readRe(ReplyVO vo);
	
	//등록
	public int insertRe(ReplyVO vo);
	
	//수정
	public int updateRe(ReplyVO vo);
	
	//삭제
	public int deleteRe(ReplyVO vo);
	
	//해당 게시글의 댓글 수
	public int getCountCmt(Long commNo);
	
}
