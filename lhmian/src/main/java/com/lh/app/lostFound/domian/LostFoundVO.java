package com.lh.app.lostFound.domian;

import java.util.Date;

import lombok.Data;

@Data
public class LostFoundVO {
private int lostNo;				// not null
private String lostContent;		// not null
private Date lostDate;			// not null
private Date lostUpdate; 		// null
private String lostFile;		// not null
private String lostStatus;		// not null
}
