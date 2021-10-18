package com.lh.app.signIn.domain;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Data;

@Data
public class CarListVO {
	private Long carNo;
	private String carCode;
	private String carType;
	@JsonFormat(pattern = "yyyy-MM-dd")
	private Date carDate;
	private Long houseInfo;
}
