package com.lh.app.notice.domain;

import lombok.Data;

@Data
public class NoticeCriteria {
   
   private int pageNum = 1;
   private int amount = 10;
   private String type;
   private String keyword;
   public NoticeCriteria() {}
   public NoticeCriteria(int pageNum, int amount) {
      this.pageNum = pageNum;
      this.amount = amount;
   }
   
   public String[] getTypeArr() {
	   return type == null ? new String[]{} : type.split("");
   }
}
