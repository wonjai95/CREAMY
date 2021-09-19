/*
 * 작성자 : 정지은
 * 작성일 : 2021.09.15
 * 로그인 관련 service interface
 * 
*/
package com.spring.Creamy_CRM.Host_service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface LoginService {
	
	//회원가입
	public void signInAction(HttpServletRequest req, Model model);
	

}
