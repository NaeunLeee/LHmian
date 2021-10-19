package com.lh.app;

import java.util.Locale;
import java.util.Random;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lh.app.comm.domain.Criteria;
import com.lh.app.comm.domain.MemPageVO;
import com.lh.app.comm.domain.PageVO;
import com.lh.app.comm.domain.PersonalCriteria;
import com.lh.app.comm.service.CommService;
import com.lh.app.conference.domain.MyConfCriteria;
import com.lh.app.conference.service.ConfService;
import com.lh.app.cs.domain.MyCsCriteria;
import com.lh.app.cs.service.CsService;
import com.lh.app.signIn.etc.CustomUserDetails;
import com.lh.app.vote.service.VoteService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	@Autowired CommService commService;
	@Autowired CsService csService;
	@Autowired ConfService confService;
	@Autowired VoteService voteService;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		model.addAttribute("count", voteService.popupVoteCount());
		return "home";
	}
	
	@RequestMapping("/home/test")
	public String test(Model model) {
		
        Random rand  = new Random();
        String key1 = "";
        String key2 = "";
        String key3 = "";
        String key4 = "";
        String result = "";
        
        for(int i=0; i<3; i++) {
            String ran = Integer.toString(rand.nextInt(10));
            key1 += ran;
        }
        for(int i=0; i<3; i++) {
        	String ran = Integer.toString(rand.nextInt(10));
        	key2 += ran;
        }
        for(int i=0; i<3; i++) {
        	String ran = Integer.toString(rand.nextInt(10));
        	key3 += ran;
        }
        for(int i=0; i<3; i++) {
        	String ran = Integer.toString(rand.nextInt(10));
        	key4 += ran;
        }
        
        result = key1 + "." + key2 + "." + key3 + "." + key4;
        
		model.addAttribute("random", result);
		
		return "test";
	}
	
	@RequestMapping("/myPage/myPage")
	public String myPage() {
		return "myPage/myPage";
	}
	
	@RequestMapping("/myPage/myWrittenList")
	public String myWrittenList(Model model, 
			@ModelAttribute("commCri") PersonalCriteria commCri,
			@ModelAttribute("cri") Criteria cri,
			@ModelAttribute("csCri") MyCsCriteria csCri, 
			@ModelAttribute("confCri") MyConfCriteria confCri, 
			@AuthenticationPrincipal CustomUserDetails customUserDetails) {
		String id = customUserDetails.getUsername();
		String name = customUserDetails.getNAME();
		
		// 커뮤니티
		commCri.setId(id);
		model.addAttribute("commList", commService.getListno(commCri));
		model.addAttribute("commPageMaker", new MemPageVO(commCri, commService.getCntMember(commCri)));
		
		// 댓글
		cri.setId(id);
		model.addAttribute("replyList", commService.getComment(cri));
		model.addAttribute("replyPageMaker", new PageVO(cri, commService.getCntCmt(cri)));
		
		// 민원
		csCri.setId(id);
		model.addAttribute("csList", csService.listByWriter(csCri));
		
		// 입주자 대표회의
		confCri.setConfWriter(name);
		model.addAttribute("confList", confService.listByWriter(confCri));
		return "myPage/myWrittenList";
	}
	
	@RequestMapping("/admin/adminPage")
	public String adminPage() {
		return "admin/adminPage";
	}
	
	@RequestMapping("/office/office")
	public String office() {
		return "office/office";
	}
	
	@RequestMapping("/resident/resident")
	public String resident() {
		return "resident/resident";
	}
	
	@RequestMapping("/introduce/sitemap")
	public String sitemap() {
		return "introduce/sitemap";
	}
	
}
