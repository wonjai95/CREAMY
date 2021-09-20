/*
 * CRM - 직원 화면 controller
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
public class EmployeeController {
	
	private static final Logger logger = LoggerFactory.getLogger(EmployeeController.class);

		
	@RequestMapping("host/Employee")
	public String Employee(HttpServletRequest req, Model model) {
		logger.info("url -> Employee");
	  
		return "host/employee/Employee";
	}
	   
	@RequestMapping("host/Employee_testDetail")
	public String Employee_testDetail(HttpServletRequest req, Model model) {
		logger.info("url -> Employee_testDetail");
	  
		return "host/employee/Employee_testDetail";
	}
	   
	
	
}
