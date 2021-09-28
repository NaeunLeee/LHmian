package com.lh.app.lostFound.controller;

import java.awt.Graphics;
import java.awt.Image;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;

import javax.imageio.ImageIO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.lh.app.lostFound.domian.LostFoundVO;
import com.lh.app.lostFound.service.LostFoundService;

@Controller
@RequestMapping("/itemLost/*")
public class LostFoundController {

	@Autowired LostFoundService lostFoundService;
	
	//전체조회-사용자
	@GetMapping("/lostList")
	public void list(LostFoundVO vo, Model model) throws IOException {
		model.addAttribute("lost", lostFoundService.getList(vo));
	}
	
	//전체조회-관리자
	@GetMapping("/admLostList")
	public void admList(LostFoundVO vo, Model model) throws IOException {
		model.addAttribute("lost", lostFoundService.getList(vo));
	}
	
	//등록페이지
	@GetMapping("/admLostInsert")
	public void registerForm() {
	}

	//등록처리
	@PostMapping("/admLostInsert")
	public String register(LostFoundVO vo, @RequestParam("lostImg") MultipartFile file, RedirectAttributes rttr) throws IllegalStateException, IOException {
	MultipartFile ufile = file;
	String filePath = "C:\\Users\\admin\\git\\LHmian\\lhmian\\src\\main\\webapp\\lost_img";
	//서버저장
	if(!ufile.isEmpty() && ufile.getSize() > 0) {
		String fileName = ufile.getOriginalFilename();
		File lostFile = new File(filePath, fileName); //경로 + 파일명
		ufile.transferTo(lostFile);
	
		//리사이징
		Image image = null;
		//바꿀 사이즈
		int width = 300;
		int height = 250;
		
		//서버에 저장된 원본이미지 가져오기
		image = ImageIO.read(lostFile);
		//사이즈 지정하여 리사이징
		Image resizeImage = image.getScaledInstance(width, height, Image.SCALE_SMOOTH);
		//이미지 불러오기
		BufferedImage newImg = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
		Graphics g = newImg.getGraphics(); 
		g.drawImage(resizeImage, 0, 0, null);
		g.dispose();
		 
		ImageIO.write(newImg, "jpg", lostFile);

		//형성된 파일을 vo에 담아줌
		vo.setLostFile(fileName);
		lostFoundService.insert(vo);
		rttr.addFlashAttribute("result", vo.getLostNo());
		rttr.addFlashAttribute("message", "등록이 정상적으로 완료되었습니다.");
	}else {
		rttr.addFlashAttribute("message", "다시 시도해 주세요.");
	}
		return "redirect:/itemLost/admLostList";
	}
	
	//수정 폼
	@GetMapping("/lostModifyModal")
	@ResponseBody
	public LostFoundVO updateForm(LostFoundVO vo) {
	System.out.println(vo);
	LostFoundVO result = lostFoundService.read(vo);
	return result;
	}
	
	//수정
	@PostMapping("/lostModify")
	public String modify(LostFoundVO vo, @RequestParam("lostImg") MultipartFile file, RedirectAttributes rttr) throws IllegalStateException, IOException {
		MultipartFile ufile = file;
		String filePath = "C:\\Users\\admin\\git\\LHmian\\lhmian\\src\\main\\webapp\\lost_img";
		//서버저장
		if(!ufile.isEmpty() && ufile.getSize() > 0) {
			String fileName = ufile.getOriginalFilename();
			File lostFile = new File(filePath, fileName); //경로 + 파일명
			ufile.transferTo(lostFile);
		
			//리사이징
			Image image = null;
			//바꿀 사이즈
			int width = 300;
			int height = 250;
			
			//서버에 저장된 원본이미지 가져오기
			image = ImageIO.read(lostFile);
			//사이즈 지정하여 리사이징
			Image resizeImage = image.getScaledInstance(width, height, Image.SCALE_SMOOTH);
			//이미지 불러오기
			BufferedImage newImg = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
			Graphics g = newImg.getGraphics(); 
			g.drawImage(resizeImage, 0, 0, null);
			g.dispose();
			 
			ImageIO.write(newImg, "jpg", lostFile);
		int result = lostFoundService.update(vo);
		if(result == 1) {
			rttr.addFlashAttribute("result", "success");
			}
		}
		return "redirect:/itemLost/admLostList";
	}
	
	//삭제
	@PostMapping("/delete")
	public String delete(LostFoundVO vo, RedirectAttributes rttr) {
		int result = lostFoundService.delete(vo);
		if(result == 1) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/itemLost/admLostList";
	}
}
