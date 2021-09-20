/*
 * 작성자 : 
 * 작성일 : 
 * 직원 관련 service interface
 * 
*/
package com.spring.Creamy_CRM.Host_service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.spring.Creamy_CRM.Host_dao.EmployeeDAOImpl;
import com.spring.Creamy_CRM.VO.EmployeeVO;

@Service
public class EmployeeServiceImpl implements EmployeeService {

	@Autowired
	EmployeeDAOImpl dao;
	
	// 직원 등록
	@Override
	public void enlistEmployee(HttpServletRequest req, Model model) {
		String employee_name = req.getParameter("employee_name");
		String employee_id = req.getParameter("employee_id");
		String employee_gender = req.getParameter("employee_gender");
		int employee_age = Integer.parseInt(req.getParameter("employee_age"));

		String employee_email1 = req.getParameter("employee_email1");
		String employee_email2 = req.getParameter("employee_email2");
		String employee_email = employee_email1 + "@" + employee_email2;
		
		String employee_address = req.getParameter("employee_address");
		
		String employee_ph1 = req.getParameter("employee_ph1");
		String employee_ph2 = req.getParameter("employee_ph2");
		String employee_ph3 = req.getParameter("employee_ph3");
		String employee_ph = employee_ph1 + "-" + employee_ph2 + "-" + employee_ph3;
		
		String department = req.getParameter("department");
		String position = req.getParameter("position");
		String duty = req.getParameter("duty");
		String job = req.getParameter("job");
		String employee_type = req.getParameter("employee_type");
		int annual_leave_cnt = Integer.parseInt(req.getParameter("annual_leave_cnt"));
		
		// vo에 담기
		EmployeeVO vo = new EmployeeVO();
		vo.setEmployee_name(employee_name);
		vo.setEmployee_id(employee_id);
		vo.setEmployee_gender(employee_gender);
		vo.setEmployee_age(employee_age);
		vo.setEmployee_email(employee_email);
		vo.setEmployee_address(employee_address);
		vo.setEmployee_ph(employee_ph);
		vo.setDepartment(department);
		vo.setPosition(position);
		vo.setDuty(duty);
		vo.setJob(job);
		vo.setEmployee_type(employee_type);
		vo.setAnnual_leave_cnt(annual_leave_cnt);
		
		
		
		
	}

}
