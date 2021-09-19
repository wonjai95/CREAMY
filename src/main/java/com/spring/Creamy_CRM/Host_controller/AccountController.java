/*
 * CRM - 회계 페이지 controller
 * 
*/
package com.spring.Creamy_CRM.Host_controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AccountController {
	
	private static final Logger logger = LoggerFactory.getLogger(AccountController.class);
	
	@RequestMapping("/host/Accounting")
	public String Accounting(HttpServletRequest req, Model model) {
		logger.info("url -> Accounting");
	  
		return "host/accounting/Accounting";
	}
	   
	@RequestMapping("/host/SGA_expenses")
	public String SGA_expenses(HttpServletRequest req, Model model) {
		logger.info("url -> SGA_expenses");
	  
		return "host/accounting/SGA_expenses";
	}

}
