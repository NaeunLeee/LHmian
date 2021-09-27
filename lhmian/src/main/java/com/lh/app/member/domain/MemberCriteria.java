package com.lh.app.member.domain;

import lombok.Data;

@Data
public class MemberCriteria {
   
   private int pageNum = 1;
   private int amount = 10;
   private String type;
   private String keyword;
   public MemberCriteria() {}
   public MemberCriteria(int pageNum, int amount) {
      this.pageNum = pageNum;
      this.amount = amount;
   }
   
   public String[] getTypeArr() {
	   return type == null ? new String[]{} : type.split("");
   }
}
