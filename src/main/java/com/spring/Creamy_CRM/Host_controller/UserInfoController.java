/*
	CRM - 회원정보 cotroller
*/

package com.spring.Creamy_CRM.Host_controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.Creamy_CRM.Host_service.LoginServiceImpl;

@Controller
public class UserInfoController {

private static final Logger logger = LoggerFactory.getLogger(UserInfoController.class);
	
	@Autowired
	LoginServiceImpl service_login;

	// 회원 정보
	@RequestMapping("/host/user")
	public String user(HttpServletRequest req, Model model) {
		logger.info("url -> user");
		
		return "host/user/user";
	}
	
	// 회원 정보 상세 페이지(for 수정)
	@RequestMapping("/host/user_detail")
	public String user_detail(HttpServletRequest req, Model model) {
		logger.info("url -> user_detail");
		
		return "host/user/user_detail";
	}
	
	// 회원 수정 버튼
	@RequestMapping("/host/modify_user")
	public String modify_user(HttpServletRequest req, Model model) {
		logger.info("url -> modify_user");
		
		return "host/user/modify_user";
	}
		
	
}
