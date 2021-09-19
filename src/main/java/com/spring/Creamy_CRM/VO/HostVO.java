/*
 * 작성자 : 주수림
 * 작성일 : 2021.09.15
 * host_tbl vo
 * 
*/
package com.spring.Creamy_CRM.VO;

public class HostVO {

   private String host_code;      // 관리자 코드 PK
   private String host_id;         // 관리자 아이디 FK
   private String host_pw;         // 관리자 비밀번호
   private String host_email;      // 관리자 이메일  
   private String host_name;      // 관리자 이름
   private String comp_name;      // 회사명
   public String getHost_code() {
      return host_code;
   }
   public void setHost_code(String host_code) {
      this.host_code = host_code;
   }
   public String getHost_id() {
      return host_id;
   }
   public void setHost_id(String host_id) {
      this.host_id = host_id;
   }
   public String getHost_pw() {
      return host_pw;
   }
   public void setHost_pw(String host_pw) {
      this.host_pw = host_pw;
   }
   public String getHost_email() {
      return host_email;
   }
   public void setHost_email(String host_email) {
      this.host_email = host_email;
   }
   public String getHost_name() {
      return host_name;
   }
   public void setHost_name(String host_name) {
      this.host_name = host_name;
   }
   public String getComp_name() {
      return comp_name;
   }
   public void setComp_name(String comp_name) {
      this.comp_name = comp_name;
   }
   
   
}