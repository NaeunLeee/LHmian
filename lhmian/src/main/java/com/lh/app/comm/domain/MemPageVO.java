package com.lh.app.comm.domain;

import lombok.Data;

// 10/06 추가

@Data
public class MemPageVO {
	private int startPage;
	private int endPage;
	private boolean prev, next;
	private int total;				//전체 레코드 건수
	private PersonalCriteria cri;			//pageNum, amount
	
	
	public MemPageVO(PersonalCriteria cri, int total) {
		this.cri = cri;
		this.total = total;
		this.endPage = (int) (Math.ceil(cri.getPageNum()/10.0))*10;
		this.startPage = this.endPage - 9;
		int realEnd = (int)(Math.ceil((total*1.0)/cri.getAmount()));
		if(realEnd < this.endPage) {
			this.endPage = realEnd;
		}
		this.prev = this.startPage > 1;
		this.next = this.endPage < realEnd;
	}

}
