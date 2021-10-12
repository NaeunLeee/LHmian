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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lh.app.admin.domain.PostVO;
import com.lh.app.admin.service.PostService;
import com.lh.app.comm.domain.Criteria;
import com.lh.app.comm.domain.PageVO;
import com.lh.app.signIn.domain.MemberVO;
import com.mchange.v2.cfg.PropertiesConfigSource.Parse;

// 10/11 택배 기능 추가

@Controller
public class PostController {

	@Autowired
	PostService postService;
	
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
	
	// 등록
	@RequestMapping("admin/insertPost") // post : 파라미터 질의문자열 (query string) ->?id=100&pw=111&name=choi
	@ResponseBody
	public PostVO insert(@RequestBody PostVO vo) { // form에 값 넘겨줌
		System.out.println(vo.toString());
		
		postService.insert(vo);
		return vo;
	}

	// 수정
	@RequestMapping("admin/updatePost")
	@ResponseBody
	public boolean updatePost(@RequestParam Long[] chk) throws Exception { // json type을 이용하려면 Requestbody룰 이용하여야한다.
		// 삭제할 사용자 ID마다 반복해서 사용자 삭제
		for (int i = 0; i < chk.length; i++) {
			PostVO vo = new PostVO();
			vo.setPostNo(chk[i]);

			postService.update(vo);
		}
		// 목록 페이지로 이동
		return true;
	}
	
	// 삭제
	@RequestMapping("admin/deletePost")
	@ResponseBody
	public boolean deletePost(@RequestParam Long[] chk) throws Exception { // json type을 이용하려면 Requestbody룰 이용하여야한다.
		// 삭제할 사용자 ID마다 반복해서 사용자 삭제
		for (int i = 0; i < chk.length; i++) {
			PostVO vo = new PostVO();
			vo.setPostNo(chk[i]);

			postService.delete(vo);
		}
		return true;
	}

}