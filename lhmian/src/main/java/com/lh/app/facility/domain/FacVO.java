package com.lh.app.facility.domain;


import java.util.Date;

import lombok.Data;

@Data
// 10/05 추가 VO 작성
public class FacVO {
	
	private String payNo;
	private Date payDate;
	private String fac;
	private String content;
	private Date startDate;
	private int period;
	private int price;
	private String gxTitle;
	
}
