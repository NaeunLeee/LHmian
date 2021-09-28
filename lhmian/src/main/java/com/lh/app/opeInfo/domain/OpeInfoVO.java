package com.lh.app.opeInfo.domain;

import java.util.Date;

import lombok.Data;

@Data
public class OpeInfoVO {

	private int oiNo;
	private String oiType;
	private String oiTitle;
	private String oiContent;
	private Date oiDate;
	private Date oiUpdate;
	
	private String oiFilename;
	private String oiFileid;
	private String oiFilepath;
	
}
