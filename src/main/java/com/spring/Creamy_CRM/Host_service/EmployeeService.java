/*
 * 작성자 : 
 * 작성일 : 
 * 직원 관련 service interface
 * 
*/
package com.spring.Creamy_CRM.Host_service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface EmployeeService {

	// 직원 등록
	public void enlistEmployee(HttpServletRequest req, Model model);
	
	
}
