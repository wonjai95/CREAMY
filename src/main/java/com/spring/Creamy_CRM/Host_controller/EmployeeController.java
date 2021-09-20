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

		
	@RequestMapping("host/employee")
	public String Employee(HttpServletRequest req, Model model) {
		logger.info("url -> employee");
	  
		return "host/employee/employee";
	}
	   
	@RequestMapping("host/employee_detail")
	public String Employee_testDetail(HttpServletRequest req, Model model) {
		logger.info("url -> employee_detail");
	  
		return "host/employee/employee_detail";
	}
	   
	// 직원 등록
	@RequestMapping("host/employee_enlist")
	public String employee_enlist(HttpServletRequest req, Model model) {
		logger.info("url -> employee_enlist");
	  
		return "host/employee/employee_enlist";
	}
	
	// 근태
	@RequestMapping("host/employee_attendance")
	public String employee_attendance(HttpServletRequest req, Model model) {
		logger.info("url -> employee_attendance");
		
		model.addAttribute("employee_code", req.getParameter("employee_code"));
		model.addAttribute("employee_name", req.getParameter("employee_name"));
		
		return "host/employee/employee_attendance";
	}
	
	// 근무시간
	@RequestMapping("host/employee_workhours")
	public String employee_workhours(HttpServletRequest req, Model model) {
		logger.info("url -> employee_workhours");
		
		model.addAttribute("employee_code", req.getParameter("employee_code"));
		model.addAttribute("employee_name", req.getParameter("employee_name"));

		return "host/employee/employee_workhours";
	}
	
	// 휴가
	@RequestMapping("host/employee_leave")
	public String employee_leave(HttpServletRequest req, Model model) {
		logger.info("url -> employee_leave");
		
		model.addAttribute("employee_code", req.getParameter("employee_code"));
		model.addAttribute("employee_name", req.getParameter("employee_name"));

		return "host/employee/employee_leave";
	}
	
	// 급여 계약
	@RequestMapping("host/employee_contract")
	public String employee_contract(HttpServletRequest req, Model model) {
		logger.info("url -> employee_contract");
		
		model.addAttribute("employee_code", req.getParameter("employee_code"));
		model.addAttribute("employee_name", req.getParameter("employee_name"));

		return "host/employee/employee_contract";
	}
	
}
