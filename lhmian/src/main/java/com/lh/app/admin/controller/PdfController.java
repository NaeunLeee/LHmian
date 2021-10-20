package com.lh.app.admin.controller;

import java.io.IOException;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;

@Controller
public class PdfController {

	@Autowired
	DataSource dataSource;

	@RequestMapping("/empPdf")
	public void empPdf(HttpServletResponse response) throws Exception {

		Connection conn = dataSource.getConnection();
		// 소스파일 컴파일하여 저장 : compileReportToFile
		String jrxmlFile = getClass().getResource("/report/emplist.jrxml").getFile();
		String jasperFile = JasperCompileManager.compileReportToFile(jrxmlFile);
		JasperPrint jasperPrint = JasperFillManager.fillReport(jasperFile, null, conn);
		JasperExportManager.exportReportToPdfStream(jasperPrint, response.getOutputStream());

	}

	@RequestMapping("/empPdf2")
	public String empPdf2(HttpServletResponse response, Model model,
			@RequestParam(required = false, defaultValue = "10") Integer deptno) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("P_DEPTNO", deptno);
		model.addAttribute("filename", "/report/emplist.jrxml");
		model.addAttribute("param", map);
		return "pdfView";
	}

	@RequestMapping("/deptPdf")
	public String deptPdf(HttpServletResponse response, Model model) {
		model.addAttribute("filename", "/report/deptList.jrxml");
		return "pdfView";
	}

	// 엑셀출력
	@RequestMapping("/deptExcelView.do")
	public ModelAndView excelView(HttpServletResponse response) throws IOException {
		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();//deptService.getDeptListMap(vo);
		HashMap<String, Object> data = new HashMap<String, Object>();
		data.put("departmentId", 10);
		data.put("departmentName", "인사");
		list.add(data);
		
		data.put("departmentId", 20);
		data.put("departmentName", "총무");
		list.add(data);
		
		HashMap<String, Object> map = new HashMap<String, Object>();
//		String[] header = { "departmentId", "departmentName", "managerId" };
//		map.put("headers", header);
		map.put("filename", "excel_dept");
		map.put("datas", list);
		return new ModelAndView("commonExcelView", map);
	}
}
