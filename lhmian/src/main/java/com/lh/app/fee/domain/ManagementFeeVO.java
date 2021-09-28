package com.lh.app.fee.domain;

import lombok.Data;

@Data
public class ManagementFeeVO {
	public String mfDate;
	public Long houseInfo;
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
}
