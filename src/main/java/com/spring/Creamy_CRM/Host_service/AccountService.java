/*
 * 작성자 : 
 * 작성일 : 
 * 회계 관련 service interface
 * 
*/
package com.spring.Creamy_CRM.Host_service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface AccountService {
	
	// 판관비 목록
	public void slipList(HttpServletRequest req, Model model);
	

}
