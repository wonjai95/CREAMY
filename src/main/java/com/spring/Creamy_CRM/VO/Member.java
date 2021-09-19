/*
 * 작성자 : 정지은
 * 작성일 : 2021.09.15
 * 안드로이드 실험용 vo - 나중에 수정
 * 
*/
package com.spring.Creamy_CRM.VO;


public class Member {
	// member_tbl
	private String member_id;
	private String member_pwd;

	
	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getMember_pwd() {
		return member_pwd;
	}

	public void setMember_pwd(String member_pwd) {
		this.member_pwd = member_pwd;
	}


}

