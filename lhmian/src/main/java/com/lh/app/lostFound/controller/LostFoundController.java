package com.lh.app.lostFound.controller;

import java.awt.Graphics;
import java.awt.Image;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;

import javax.imageio.ImageIO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.lh.app.lostFound.domian.LostFoundVO;
import com.lh.app.lostFound.service.LostFoundService;

@Component
@Controller
public class LostFoundController {

	@Autowired
	LostFoundService lostFoundService;

	// 전체조회-사용자
	@GetMapping("/itemLost/lostList")
	public void list(LostFoundVO vo, Model model) {
		model.addAttribute("lost", lostFoundService.getList(vo));
	}

	// 전체조회-관리자
	@GetMapping("/itemLost/admLostList")
	public void admList(LostFoundVO vo, Model model) {
		model.addAttribute("lost", lostFoundService.getList(vo));
	}

	// 등록페이지
	@GetMapping("/itemLost/admLostInsert")
	public void registerForm() {
	}

	// 등록처리
	@PostMapping("/itemLost/admLostInsert")
	public String register(LostFoundVO vo, @RequestParam("lostImg") MultipartFile file, RedirectAttributes rttr)
			throws IllegalStateException, IOException {
		MultipartFile ufile = file;
		//String filePath = "C:\\Users\\HOME\\git\\LHmian\\lhmian\\src\\main\\webapp\\lost_img"; // 집
		//String filePath = "C:\\Users\\arido\\git\\LHmian\\lhmian\\src\\main\\webapp\\lost_img"; //노트북
		String filePath = "C:\\Users\\admin\\git\\LHmian\\lhmian\\src\\main\\webapp\\lost_img"; //학원
		// 서버저장
		if (!ufile.isEmpty() && ufile.getSize() > 0) {
			String fileName = ufile.getOriginalFilename();
			File lostFile = new File(filePath, fileName); // 경로 + 파일명
			ufile.transferTo(lostFile);

			// 리사이징
			Image image = null;
			// 바꿀 사이즈
			int width = 300;
			int height = 250;

			// 서버에 저장된 원본이미지 가져오기
			image = ImageIO.read(lostFile);
			// 사이즈 지정하여 리사이징
			Image resizeImage = image.getScaledInstance(width, height, Image.SCALE_SMOOTH);
			// 이미지 불러오기
			BufferedImage newImg = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
			Graphics g = newImg.getGraphics();
			g.drawImage(resizeImage, 0, 0, null);
			g.dispose();

			ImageIO.write(newImg, "jpg", lostFile);

			// 형성된 파일을 vo에 담아줌
			vo.setLostFile(fileName);
			lostFoundService.insert(vo);
			rttr.addFlashAttribute("result", vo.getLostNo());
			rttr.addFlashAttribute("message", "등록이 정상적으로 완료되었습니다.");
		} else {
			rttr.addFlashAttribute("message", "다시 시도해 주세요.");
		}
		return "redirect:/itemLost/admLostList";
	}

	// 수정 폼
	@GetMapping("/itemLost/lostModifyForm")
	@ResponseBody
	public LostFoundVO updateForm(LostFoundVO vo) {
		LostFoundVO result = lostFoundService.read(vo);
		return result;
	}

	// 수정
	//썅!!!
	@PostMapping("/itemLost/lostModify")
	public String modify(LostFoundVO vo, @RequestParam("lostChangeImg") MultipartFile file, RedirectAttributes rttr) throws IllegalStateException, IOException {
		// 파일은 수정하지 않을 경우를 대비해 단건조회
		LostFoundVO oldVo = lostFoundService.read(vo);
		// 새파일
		MultipartFile ufile = file;
		//String filePath = "C:\\Users\\arido\\git\\LHmian\\lhmian\\src\\main\\webapp\\lost_img"; //노트북
		//if(file != null) {
		//String filePath = "C:\\Users\\HOME\\git\\LHmian\\lhmian\\src\\main\\webapp\\lost_img"; // 집
		String filePath = "C:\\Users\\admin\\git\\LHmian\\lhmian\\src\\main\\webapp\\lost_img"; //학원
		// 서버저장
			if (!ufile.isEmpty() && ufile.getSize() > 0) {
				// 기존 파일 삭제
				File oldFile = new File(filePath, oldVo.getLostFile());
				if(oldFile.exists()) {
					oldFile.delete();
				}
				//lostFoundService.delFile(filePath, oldVo.getLostFile());
				// 새파일 저장
				String fileName = ufile.getOriginalFilename();
				File lostFile = new File(filePath, fileName); // 경로 + 파일명
				ufile.transferTo(lostFile);
				// 리사이징
				Image image = null;
				// 바꿀 사이즈
				int width = 300;
				int height = 250;
	
				// 서버에 저장된 원본이미지 가져오기
				image = ImageIO.read(lostFile);
				// 사이즈 지정하여 리사이징
				Image resizeImage = image.getScaledInstance(width, height, Image.SCALE_SMOOTH);
				// 이미지 불러오기
				BufferedImage newImg = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
				Graphics g = newImg.getGraphics();
				g.drawImage(resizeImage, 0, 0, null);
				g.dispose();
	
				ImageIO.write(newImg, "jpg", lostFile);
				vo.setLostFile(fileName);
				
			}else {
				vo.setLostFile(oldVo.getLostFile());
//				lostFoundService.update(vo);
//				rttr.addFlashAttribute("result", vo.getLostNo());
			}
			//}
			lostFoundService.update(vo);
			rttr.addFlashAttribute("result", vo.getLostNo());
			// 파일은 수정하지 않는 경우
			//vo.setLostFile(oldVo.getLostFile());
			//System.out.println("제발되라");
		
		return "redirect:/itemLost/admLostList";
	}

	// 삭제
	@Scheduled(cron = "* 0-1 0 * * *")
	public void delete() {
		System.out.println("매일밤12시 삭제");
		lostFoundService.delete();
	}
	
}
