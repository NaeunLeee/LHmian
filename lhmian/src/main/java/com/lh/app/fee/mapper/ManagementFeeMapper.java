package com.lh.app.fee.mapper;

import java.util.List;

import com.lh.app.fee.domain.ManagementFeeVO;

public interface ManagementFeeMapper {
	//동호수의 모든 관리비 내역
	public List<ManagementFeeVO> selectFeeList(ManagementFeeVO vo);
	
	//특정 월 관리비 내역
	public ManagementFeeVO selectFee(ManagementFeeVO vo);
	
	//관리비 전체 평균
	public ManagementFeeVO selectAvg();
	
	//제일 최근 관리비 출력(이전달 관리비와 함께)
	public ManagementFeeVO selectCurrentFee(ManagementFeeVO vo);
	
	//관리자 전체 관리비 출력
	public List<ManagementFeeVO> admSelectFeeList();
	
	//월 기준 이전 6개월 관리비 출력
	public List<ManagementFeeVO> sixMonthsSelect(ManagementFeeVO vo);
	
	//최근 월 기준 이전 6개월 관리비 출력
	public List<ManagementFeeVO> sixMonthsCurrent(ManagementFeeVO vo);
	
	//해당 월의 홀수 동, 짝수 동 관리비 평균 출력
	public ManagementFeeVO samePyeongAvg(ManagementFeeVO vo);
}
