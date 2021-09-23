package com.lh.app.notice.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class NoticeVO {
	private long noticeNo;			//공지사항 번호
	private String noticeTitle;		//공지제목
	private String noticeContent;	//공지내용
	private Date noticeDate;		//공지날짜
	private Date noticeUpdate;		//수정날짜
}
