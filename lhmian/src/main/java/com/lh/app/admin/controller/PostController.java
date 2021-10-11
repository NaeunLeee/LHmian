package com.lh.app.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lh.app.admin.domain.PostVO;
import com.lh.app.admin.service.PostService;
import com.lh.app.comm.domain.Criteria;
import com.lh.app.comm.domain.PageVO;

@Controller
public class PostController {

	@Autowired
	PostService postService;
	
	// 10/11 controller 추가
	
	//택배 리스트 조회
	@RequestMapping("admin/admPost")
	public String getListview(Model model,Criteria cri) {
		int total = postService.getTotalCount(cri);
		model.addAttribute("list", postService.getList(cri));
		model.addAttribute("pageMaker", new PageVO(cri, total));
		System.out.println("cri======" + cri);
		System.out.println(total);
		return "admin/admPost";
	}
	
	@GetMapping("/{cmtNo}") // queryString 방식
	public PostVO read(@PathVariable Long postNo, PostVO vo) {
		vo.setPostNo(postNo);
		return postService.read(vo);
	}

	// 등록

	@PostMapping("/") // post : 파라미터 질의문자열 (query string) ->?id=100&pw=111&name=choi
	public PostVO insertRe(PostVO vo) { // form에 값 넘겨줌
		System.out.println(vo.toString());
		postService.insert(vo);
		return vo;
	}

	// 수정

	@PutMapping("/") // put, delete : 파라미터 json만 가능 -> { id:100, pw:"111",name:"choi"}
	public PostVO update(@RequestBody PostVO vo) { // RequestBody 필요
		System.out.println(vo.toString());
		postService.update(vo);
		return vo;
	}

	// 삭제

	@DeleteMapping("/{cmtNo}")
	public boolean delete(@PathVariable Long postNo, PostVO vo) {
		vo.setPostNo(postNo);
		int r = postService.delete(vo);
		return r == 1 ? true : false;
	}

}
