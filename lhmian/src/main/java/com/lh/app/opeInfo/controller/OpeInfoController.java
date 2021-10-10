package com.lh.app.opeInfo.controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.lh.app.opeInfo.domain.OpeInfoCriteria;
import com.lh.app.opeInfo.domain.OpeInfoPageVO;
import com.lh.app.opeInfo.domain.OpeInfoVO;
import com.lh.app.opeInfo.service.OpeInfoService;

import lombok.extern.java.Log;

@Controller
@Log
public class OpeInfoController {

	
	@Autowired
	OpeInfoService opeInfoService;
	
	// 전체 조회
	@GetMapping("/introduce/opeInfoList")
	public String opeInfoList(Model model, @ModelAttribute("cri") OpeInfoCriteria cri) {
		int total = opeInfoService.getTotalCount(cri);
		model.addAttribute("list", opeInfoService.getList(cri));
		model.addAttribute("pageMaker", new OpeInfoPageVO(cri, total));
		return "introduce/opeInfoList";
	}
	
	// 단건 조회
	@GetMapping("/introduce/opeInfoSelect")
	public String opeInfoSelect(Model model, @ModelAttribute("cri") OpeInfoCriteria cri, OpeInfoVO vo) {
		model.addAttribute("info", opeInfoService.read(vo));
		return "introduce/opeInfoSelect";
	}
	
	// 관리자 전체 조회
	@GetMapping("/admin/admOpeInfoList")
	public String admOpeInfoList(Model model, @ModelAttribute("cri") OpeInfoCriteria cri) {
		int total = opeInfoService.getTotalCount(cri);
		model.addAttribute("list", opeInfoService.getList(cri));
		model.addAttribute("pageMaker", new OpeInfoPageVO(cri, total));
		return "admin/admOpeInfoList";
	}
	
	// 관리자 단건 조회
	@GetMapping("/admin/admOpeInfoSelect")
	public String admOpeInfoSelect(Model model, OpeInfoVO vo, @ModelAttribute("cri") OpeInfoCriteria cri) {
		model.addAttribute("info", opeInfoService.read(vo));
		return "admin/admOpeInfoSelect";
	}
	
	// 등록 폼
	@GetMapping("/admin/admOpeInfoInsert")
	public String admOpeInfoInsertForm(MultipartFile[] uploadFile) {
		return "admin/admOpeInfoInsert";
	}
	
	// 등록
	@PostMapping("/admin/admOpeInfoInsert")
	public String admOpeInfoInsert(RedirectAttributes rttr, OpeInfoVO vo) {
		int n = opeInfoService.insert(vo);
		
		if (n == 1) {
			rttr.addFlashAttribute("message", "등록이 완료되었습니다!");
		} else {
			rttr.addFlashAttribute("message", "등록에 실패했습니다. 다시 시도해주세요.");
		}
		
		return "redirect:/admin/admOpeInfoList";
	}
	
	// 파일 첨부
	@PostMapping("/admin/opeInfoFileAttach")
	@ResponseBody
	public List<OpeInfoVO> opeInfoFileAttach(MultipartFile[] uploadFile, RedirectAttributes rttr) throws IllegalStateException, IOException {
		List<OpeInfoVO> list = new ArrayList<OpeInfoVO>();
		
		String path = "c:/opeInfoFile";
		
		File dir = new File(path);
		if (!dir.exists()) {
			dir.mkdirs();
		}
		
		for (int i=0; i<uploadFile.length; i++) {
			MultipartFile ufile = uploadFile[i];
			
			if (!ufile.isEmpty() && ufile.getSize()>0) {
				String filename = ufile.getOriginalFilename();
				UUID fileid = UUID.randomUUID();
				File file = new File(path, fileid + filename);
				ufile.transferTo(file);
				
				OpeInfoVO vo = new OpeInfoVO();
				vo.setOiFileid(fileid.toString());
				vo.setOiFilename(filename);
				vo.setOiFilepath(path);
				list.add(vo);
			}
		}
		return list;
	}
	
	// 수정 (ajax..)
//	@PostMapping("/admin/opeInfoUpdate")
//	@ResponseBody
//	public OpeInfoVO opeInfoUpdate(@RequestBody OpeInfoVO vo) {
//		opeInfoService.update(vo);
//		return opeInfoService.read(vo);
//	}
	
	// 수정 폼
	@GetMapping("/admin/admOpeInfoUpdate")
	public String opeInfoUpdateForm(OpeInfoVO vo, Model model) {
		model.addAttribute("info", opeInfoService.read(vo));
		return "admin/admOpeInfoUpdate";
	}
	
	// 수정
	@PostMapping("/admin/admOpeInfoUpdate")
	public String opeInfoUpdate(RedirectAttributes rttr, OpeInfoVO vo) {
		
		int n = opeInfoService.update(vo);
		
		if (n == 1) {
			rttr.addFlashAttribute("message", "수정이 완료되었습니다!");
		} else {
			rttr.addFlashAttribute("message", "수정에 실패했습니다. 다시 시도해주세요.");
		}
		
		rttr.addAttribute("info", opeInfoService.read(vo));
		
		return "redirect:/admin/admOpeInfoList";
	}
	
	// 삭제
	@PostMapping("/admin/opeInfoDelete")
	public String delete(RedirectAttributes rttr, OpeInfoVO vo, @ModelAttribute("cri") OpeInfoCriteria cri) {
		
		int n = opeInfoService.delete(vo);
		
		if (n == 1) {
			rttr.addFlashAttribute("message", "삭제가 완료되었습니다!");
		} else {
			rttr.addFlashAttribute("message", "삭제에 실패했습니다. 다시 시도해주세요.");
		}
		
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());
		rttr.addAttribute("type", cri.getType());
		rttr.addAttribute("keyword", cri.getKeyword());
		
		return "redirect:/admin/admOpeInfoList";
	}
	
	// 첨부파일 삭제
	@PostMapping("/admin/opeInfoDelFile")
	@ResponseBody
	public OpeInfoVO  opeInfoDelFile(@RequestBody OpeInfoVO vo) {
		opeInfoService.deleteFile(vo);
		return opeInfoService.read(vo);
	}
	
	
	// 첨부파일 다운로드
	@GetMapping("/introduce/opeInfoDownload")
	public void fileDownload(@RequestParam Map<String, Object> commandMap
						   , HttpServletRequest request
						   , HttpServletResponse response) throws IOException {
		
		String oiFileid = (String) commandMap.get("oiFileid");
		
		// oiFileid로 첨부파일 검색
		OpeInfoVO vo = opeInfoService.readByFileid(oiFileid);
		String oiFilename = "";
		
		if (vo != null) {
			oiFilename = vo.getOiFilename();
		}
		
		File uFile = new File("c:/opeInfoFile", oiFileid + oiFilename);
		long fSize = uFile.length();
		
		if (fSize > 0) {
			String mimetype = "application/x-msdownload";
			response.setContentType(mimetype);
			response.setHeader("Content-Disposition", 
							   "attachment;filename=\"" 
							 + URLEncoder.encode(oiFilename, "utf-8") + "\"");
			
			BufferedInputStream in = null;
			BufferedOutputStream out = null;
			try {
				in = new BufferedInputStream(new FileInputStream(uFile));
				out = new BufferedOutputStream(response.getOutputStream());
				FileCopyUtils.copy(in, out);
				out.flush();
			} catch (IOException ex) {
			} finally {
				in.close();
				response.getOutputStream().flush();
				response.getOutputStream().close();
			}
		} else {
			response.setContentType("application/x-msdownload");
			PrintWriter printwriter = response.getWriter();
			printwriter.println("<html>");
			printwriter.println("<h2>Could not get file name:<br>" + oiFileid + "</h2>");
			printwriter.println("<center><h3><a href='javascript: history.go(-1)'>Back</a></h3></center>");
			printwriter.println("&copy; webAccess");
			printwriter.println("</html>");
			printwriter.flush();
			printwriter.close();
		}
		
	}
	
	// 첨부파일 다운로드
	@GetMapping("/admin/opeInfoDownload")
	public void admFileDownload(@RequestParam Map<String, Object> commandMap
			, HttpServletRequest request
			, HttpServletResponse response) throws IOException {
		
		String oiFileid = (String) commandMap.get("oiFileid");
		
		// oiFileid로 첨부파일 검색
		OpeInfoVO vo = opeInfoService.readByFileid(oiFileid);
		String oiFilename = "";
		
		if (vo != null) {
			oiFilename = vo.getOiFilename();
		}
		
		File uFile = new File("c:/opeInfoFile", oiFileid + oiFilename);
		long fSize = uFile.length();
		
		if (fSize > 0) {
			String mimetype = "application/x-msdownload";
			response.setContentType(mimetype);
			response.setHeader("Content-Disposition", 
					"attachment;filename=\"" 
							+ URLEncoder.encode(oiFilename, "utf-8") + "\"");
			
			BufferedInputStream in = null;
			BufferedOutputStream out = null;
			try {
				in = new BufferedInputStream(new FileInputStream(uFile));
				out = new BufferedOutputStream(response.getOutputStream());
				FileCopyUtils.copy(in, out);
				out.flush();
			} catch (IOException ex) {
			} finally {
				in.close();
				response.getOutputStream().flush();
				response.getOutputStream().close();
			}
		} else {
			response.setContentType("application/x-msdownload");
			PrintWriter printwriter = response.getWriter();
			printwriter.println("<html>");
			printwriter.println("<h2>Could not get file name:<br>" + oiFileid + "</h2>");
			printwriter.println("<center><h3><a href='javascript: history.go(-1)'>Back</a></h3></center>");
			printwriter.println("&copy; webAccess");
			printwriter.println("</html>");
			printwriter.flush();
			printwriter.close();
		}
		
	}

	
	
}
