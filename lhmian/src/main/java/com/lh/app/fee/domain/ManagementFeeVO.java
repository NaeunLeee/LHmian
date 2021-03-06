package com.lh.app.fee.domain;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Data;

@Data
public class ManagementFeeVO {
	public String mfDate;
	public Date yearMonth;
	public String year;
	public String month;
	public String houseInfo;
	public String dong;
	public String hosu;
	public String payNo;
	public Long mfFee;
	public Long mfHeat;
	public Long mfElect;
	public Long mfWater;
	public Long mfTv;
	public Long mfClean;
	public Long mfSecurity;
	public Long mfElevator;
	public Long mfTrash;
	public Long mfTotal;
	public Long mfAvg;
	public Long lastMonthTotal;
	public String paid;
	
	public int oddAvg;
	public int evenAvg;
	
	@JsonFormat(pattern = "yyyy-MM", timezone = "Asia/Seoul")
	public Date feeDate;
}
