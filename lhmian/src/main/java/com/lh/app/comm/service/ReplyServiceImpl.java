package com.lh.app.comm.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lh.app.comm.domain.ReplyPageVO;
import com.lh.app.comm.domain.ReplyVO;
import com.lh.app.comm.mapper.CommMapper;
import com.lh.app.comm.mapper.ReplyMapper;



@Service //-> 이게 없으면 테스트나 실행이 불가능하다 중요!!
public class ReplyServiceImpl implements ReplyService {

	@Autowired ReplyMapper replyMapper;
	@Autowired CommMapper commMapper;
	
	@Override
	public ReplyPageVO getList(Long commNo) {
		ReplyPageVO vo = new ReplyPageVO();
		vo.setList(replyMapper.getList(commNo));
		return vo;
	}

	@Override
	public ReplyVO readRe(ReplyVO vo) {
		// TODO Auto-generated method stub
		return replyMapper.readRe(vo);
	}

	@Override
	public int insertRe(ReplyVO vo) {
		return replyMapper.insertRe(vo);
	}

	@Override
	public int updateRe(ReplyVO vo) {
		// TODO Auto-generated method stub
		return replyMapper.updateRe(vo);
	}

	@Override
	public int deleteRe(ReplyVO vo) {
		// TODO Auto-generated method stub
		return replyMapper.deleteRe(vo);
	}

	@Override
	public int getCountCmt(Long commNo) {
		return replyMapper.getCountCmt(commNo);
	} 


}
