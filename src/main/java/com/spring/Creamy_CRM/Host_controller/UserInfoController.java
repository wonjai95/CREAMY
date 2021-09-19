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

	//
	@RequestMapping("/host/user")
	public String user(HttpServletRequest req, Model model) {
		logger.info("url -> user");
		
		return "host/user/user";
	}
	
		
	
	
	
}
