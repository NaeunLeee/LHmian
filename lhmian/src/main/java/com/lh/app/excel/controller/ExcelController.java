package com.lh.app.excel.controller;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.math.BigDecimal;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.FillPatternType;
import org.apache.poi.ss.usermodel.Font;
import org.apache.poi.ss.usermodel.IndexedColors;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.PostMapping;

import com.lh.app.excel.service.ExcelService;

@Controller
public class ExcelController {
	
	@Autowired ExcelService excelService;
	
	@PostMapping("/admin/excelDownload")
	public void excelDownload(HttpServletRequest request, HttpServletResponse response) {
		response.setCharacterEncoding("UTF-8");
		
		Workbook workbook = new XSSFWorkbook();
		CellStyle cellStyle = workbook.createCellStyle();
		
		//폰트 설정
		Font font = workbook.createFont();
		font.setFontName("돋움");
		cellStyle.setFont(font);
		
        // 테이블 헤더용 스타일
        CellStyle headStyle = workbook.createCellStyle();

        Font headFont = workbook.createFont();
        headFont.setBold(true);
        //헤더 색깔
        headStyle.setFillForegroundColor(IndexedColors.PALE_BLUE.getIndex());
        headStyle.setFillPattern(FillPatternType.SOLID_FOREGROUND);
		headStyle.setFont(headFont);
        
		workbook.createSheet("회원정보");
		
		//헤더, DB 컬럼명
		String[] headers = {"RN", "HOUSE_INFO", "FAMILY_NUM", "ID", "NAME", "PHONE", "POSITION", "UN_PAID"};
		
		Map<String, String> headerMap = new HashMap<>();
		
		//컬럼명을 한글화
		headerMap.put("RN", "순번");
		headerMap.put("HOUSE_INFO", "동호수");
		headerMap.put("FAMILY_NUM", "구성원수");
		headerMap.put("ID", "아이디");
		headerMap.put("NAME", "이름");
		headerMap.put("PHONE", "연락처");
		headerMap.put("POSITION", "권한");
		headerMap.put("UN_PAID", "미납여부");

		Row row;
		Cell cell = null;
		Sheet sheet = workbook.getSheetAt(0); //시트번호
		int rowNum = 0; //행번호
		
		//헤더
		if (headers != null) {
			row = sheet.createRow(rowNum++);
			int colNum = 0; //열번호
			for (String header : headers) {
				row.createCell(colNum++).setCellValue(headerMap.get(header));
			}
		}
		
		//바디
		List<Map<String, Object>> list = excelService.memberListForExcel();
		
		for (Map<String, Object> map : list) {
			row = sheet.createRow(rowNum++);
			
			int colNum = 0;
			for (String header : headers) {
				cell = row.createCell(colNum++);
				
				Object field = map.get(header);
				
				if (field == null) {
					field = "";
				}
				if (field instanceof String) {
					cell.setCellValue((String) field);
				} else if (field instanceof BigDecimal) {
					cell.setCellValue(((BigDecimal) field).doubleValue());
				} else if (field instanceof Date) {
					Date nowdate = (Date) field;
					SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
					cell.setCellValue(simpleDateFormat.format(nowdate));
				} else {
					cell.setCellValue(field.toString());
				}
			}
		}
				
		//서버에 엑셀 파일 저장
		FileOutputStream fileOutputStream;
		
		//절대 경로
		String absolutePath = request.getSession().getServletContext().getRealPath("resources/excelFile");

		System.out.println(absolutePath);
		
		String filename = absolutePath + "/excel_" + System.currentTimeMillis() + ".xlsx";
		try {
			fileOutputStream = new FileOutputStream(filename);
			workbook.write(fileOutputStream);
			fileOutputStream.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		//내려받기
		String downFileName = "LHmian 회원정보.xlsx";

		File uFile = new File(filename);
		int fSize = (int) uFile.length();
		
		String mimetype = "text/html";
		
		response.setBufferSize(fSize);
		response.setContentType(mimetype);
		
		try {
			BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(uFile));
			response.setHeader("Content-Disposition",
					"attachment; filename=\"" + URLEncoder.encode(downFileName, "utf-8") + "\"");
			response.setContentLength(fSize);
			FileCopyUtils.copy(bufferedInputStream, response.getOutputStream());
			bufferedInputStream.close();
			uFile.delete();
			response.getOutputStream().flush();
			response.getOutputStream().close();
		} catch (IOException e) {
			e.printStackTrace();
		}


		
	}
}
