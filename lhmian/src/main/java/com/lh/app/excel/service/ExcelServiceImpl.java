package com.lh.app.excel.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lh.app.excel.mapper.ExcelMapper;

@Service
public class ExcelServiceImpl implements ExcelService {

	@Autowired ExcelMapper excelMapper;
	
	@Override
	public List<Map<String, Object>> memberListForExcel() {
		// TODO Auto-generated method stub
		return excelMapper.memberListForExcel();
	}

}
