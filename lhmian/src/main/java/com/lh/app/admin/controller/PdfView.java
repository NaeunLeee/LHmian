package com.lh.app.admin.controller;

import java.sql.Connection;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.view.AbstractView;

import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;

@Component
public class PdfView extends AbstractView {
	
//	@Autowired
//	DataSource datasource;
	
	@Override
	protected void renderMergedOutputModel(Map<String, Object> model, HttpServletRequest request, HttpServletResponse response) throws Exception {
	
//		Connection conn = datasource.getConnection();
//		String reportFile = (String)model.get("filename");
//		Map<String, Object> param = (Map<String, Object>) model.get("param");
//		String jrxmlFile = getClass().getResource(reportFile).getFile();
//		String jasperFile = JasperCompileManager.compileReportToFile( jrxmlFile );
//		JasperPrint jasperPrint = JasperFillManager.fillReport(jasperFile, param, conn);
//		JasperExportManager.exportReportToPdfStream(jasperPrint, response.getOutputStream());
		
	}
	
}
