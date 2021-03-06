package com.lh.app.comm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.lh.app.comm.domain.ReplyPageVO;
import com.lh.app.comm.domain.ReplyVO;
import com.lh.app.comm.service.ReplyService;

@RestController
@RequestMapping("/reply/*")
public class ReplyRestController {

	@Autowired
	ReplyService replyService;

	// 해당 게시글의 댓글 조회

	@GetMapping("/")
	public ReplyPageVO getList(@RequestParam("commNo") Long commNo) {

		return replyService.getList(commNo);
	}

	// 댓글조회
	@GetMapping("/{cmtNo}") // queryString 방식
	public ReplyVO read(@PathVariable Long cmtNo, ReplyVO vo) {
		vo.setCmtNo(cmtNo);
		return replyService.readRe(vo);
	}

	// 등록
	@PostMapping("/") // post : 파라미터 질의문자열 (query string) -> ?id=100&pw=111&name=choi
	public ReplyVO insertRe(ReplyVO vo) { // form에 값 넘겨줌
		System.out.println(vo.toString());
		replyService.insertRe(vo);
		return vo;
	}

	// 수정
	@PutMapping("/") // put, delete : 파라미터 json만 가능 -> { id:100, pw:"111", name:"choi"}
	public ReplyVO update(@RequestBody ReplyVO vo) { // RequestBody 필요
		System.out.println(vo.toString());
		replyService.updateRe(vo);
		return vo;
	}

	// 삭제
	@DeleteMapping("/{cmtNo}")
	public boolean delete(@PathVariable Long cmtNo, ReplyVO vo) {
		vo.setCommNo(cmtNo);
		int r = replyService.deleteRe(vo);
		return r == 1 ? true : false;
	}

}
