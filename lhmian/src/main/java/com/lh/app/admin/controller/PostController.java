package com.lh.app.admin.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lh.app.admin.domain.PostVO;
import com.lh.app.admin.service.PostService;
import com.lh.app.comm.domain.Criteria;
import com.lh.app.comm.domain.PageVO;
import com.lh.app.signIn.domain.MemberVO;

// 10/11 택배 기능 추가

@Controller
public class PostController {

	@Autowired
	PostService postService;

	// 10/19 수정
	// 택배 리스트 조회
	@RequestMapping("admin/admPost")
	public String getListview(Model model, @ModelAttribute("cri") Criteria cri) {

		// 타입 변환 후 페이지 이동 조건
		if (cri.getPreType() != null && cri.getType() != null && (cri.getPreType().equals(cri.getType()))
				&& cri.getKeyword() != null) {
			int total = postService.getTotalCount(cri);
			model.addAttribute("list", postService.getList(cri));
			model.addAttribute("pageMaker", new PageVO(cri, total));
			model.addAttribute("type", cri.getType());
			System.out.println("1 ----------------------------------");
			System.out.println(cri.getType());
			System.out.println(cri.getPreType());
			System.out.println("------------------------------------");
			return "admin/admPost";
			
		//타입 변환 시 페이지 초기화 조건
		} else if((cri.getType()!=null)&&(cri.getType().equals(",Y")||cri.getType().equals(",N"))&& cri.getKeyword().equals("") ) {
			
			cri.setPageNum(1);
			int total = postService.getTotalCount(cri);
			model.addAttribute("list", postService.getList(cri));
			model.addAttribute("pageMaker", new PageVO(cri, total));
			model.addAttribute("type", cri.getType());
			System.out.println("2-----------------------------------");
			System.out.println(cri.getType());
			System.out.println(cri.getPreType());
			System.out.println("------------------------------------");
			return "admin/admPost";
		// 타입 변환 + 빈칸검색 시 페이지 초기화 -> 타입 초기화
		} else if((cri.getType() != null && cri.getKeyword().equals(""))) {
			cri.setType("");
			cri.setPageNum(1);
			int total = postService.getTotalCount(cri);
			model.addAttribute("list", postService.getList(cri));
			model.addAttribute("pageMaker", new PageVO(cri, total));
			model.addAttribute("type", null);
			System.out.println("3 ---------------------------------");
			System.out.println(cri.getType());
			System.out.println(cri.getPreType());
			System.out.println("-----------------------------------");
			return "admin/admPost";
		}
		else {
			cri.setPageNum(1);
			int total = postService.getTotalCount(cri);
			model.addAttribute("list", postService.getList(cri));
			model.addAttribute("pageMaker", new PageVO(cri, total));
			model.addAttribute("type", cri.getType());
			System.out.println("4");
			return "admin/admPost";
		}

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

	// 인증 버튼 클릭시
	@PostMapping("admin/sendKey")
	@ResponseBody
	public String sendKey(@RequestBody HashMap<String, String> map) {
		// 넘어온 휴대폰 번호
		System.out.println(map.get("phone"));

		return postService.smsAPI(map.get("phone"));
	}

	// 전화번호 조회 --> 문자서비스로 이동시킬 것
	@RequestMapping("admin/readPhone")
	@ResponseBody
	public String readPhone(@RequestBody MemberVO vo) {
		String phone = postService.readPhone(vo);
		return phone;
	}

}
