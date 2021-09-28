package com.lh.app.lostFound.domian;



import java.sql.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Data;

@Data
public class LostFoundVO {
private int lostNo;				// not null
private String lostContent;		// not null
@JsonFormat(pattern = "yyyy-MM-dd")
private Date lostDate;			// not null
private Date lostUpdate; 		// null
private String lostFile;		// not null
private String lostStatus;		// not null
}
