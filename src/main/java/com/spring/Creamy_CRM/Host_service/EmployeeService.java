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
	
	// 직원 목록 조회
	public void employeeList(HttpServletRequest req, Model model);
	
	// 직원 상세 정보
	public void employeeDetail(HttpServletRequest req, Model model);
	
	// 직원 상세 정보 수정 처리
	public void updateEmployeeAction(HttpServletRequest req, Model model);
	
	// 직원 등록시 해당 id가 있는지 체크 
	public void chkEmployeeIdAction(HttpServletRequest req, Model model);

	// 직원 등록
	public void enlistEmployee(HttpServletRequest req, Model model);
	
	// 근태 등록 처리
	public void employeeAttendanceAction(HttpServletRequest req, Model model);
	
	// 근무시간 등록 처리
	public void employeeWorkHoursAction(HttpServletRequest req, Model model);
	
	// 휴가 등록 페이지
	public void regLeavePage(HttpServletRequest req, Model model);
	
	// 휴가 등록 처리
	public void leaveAction(HttpServletRequest req, Model model);
	
	// 급여 계약 처리 
	public void salaryContractAction(HttpServletRequest req, Model model);
	
	
}
