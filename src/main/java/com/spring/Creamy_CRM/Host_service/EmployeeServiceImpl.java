/*
 * 작성자 : 
 * 작성일 : 
 * 직원 관련 service interface
 * 
*/
package com.spring.Creamy_CRM.Host_service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.spring.Creamy_CRM.Host_dao.EmployeeDAOImpl;
import com.spring.Creamy_CRM.VO.EmployeeVO;
import com.spring.Creamy_CRM.util.EmailChkHandler;

@Service
public class EmployeeServiceImpl implements EmployeeService {

	@Autowired
	EmployeeDAOImpl dao;
	
	@Autowired
	BCryptPasswordEncoder encoder;
	
	// 직원 목록 조회
	@Override
	public void employeeList(HttpServletRequest req, Model model) {
		String host_code = (String) req.getSession().getAttribute("id");
		System.out.println("host_code : " + host_code);
		host_code = "H1";
		
		ArrayList<EmployeeVO> dtos = dao.employeeList(host_code);
		
		model.addAttribute("dtos", dtos);
		
	}
	
	// 직원 상세 정보
	@Override
	public void employeeDetail(HttpServletRequest req, Model model) {
		
		String employee_code = req.getParameter("employee_code");
		System.out.println("employee_code : " + employee_code);
		
		EmployeeVO dtos = dao.getEmployeeDetail(employee_code);
		
		model.addAttribute("dtos", dtos);
	}
	
	// 직원 등록시 해당 id 체크 
	@Override
	public void chkEmployeeIdAction(HttpServletRequest req, Model model) {
		String employee_id = req.getParameter("employee_id");
		System.out.println("employee_id : " + employee_id);
		int selectCnt = 0;
		
		// 이미 직원 등록이 완료된 id인지 체크 (직원등록 완료된 id : 1, 직원등록 x인 id : 0)
		selectCnt = dao.chkEmployeeIdPreexisting(employee_id);
		System.out.println("이미 등록된 직원 아이디 체크 selectCnt : " + selectCnt);
		
		if(selectCnt == 0) {
			// 직원 등록시 해당 id가 Auth_tbl 있는지 체크 (회원가입된 id : 3, 회원가입 x인 id(정상등록 가능) : 2) 
			selectCnt = dao.chkEmployeeIdAction(employee_id);
			System.out.println("selectCnt : " + selectCnt);
		}
		
		model.addAttribute("selectCnt", selectCnt);
		model.addAttribute("employee_id", employee_id);
	}
	
	
	// 직원 등록
	@Override
	public void enlistEmployee(HttpServletRequest req, Model model) {
		String employee_name = req.getParameter("employee_name");
		String employee_id = req.getParameter("employee_id");
		System.out.println("employee_id : " + employee_id);
		String pwd = req.getParameter("password");
		
		String encryptPwd = encoder.encode(pwd);
		
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
		
		String host_code = (String) req.getSession().getAttribute("id");
		System.out.println("host_code : " + host_code);
		host_code = "H1";
		
		if(department == null || department.equals("")) department = "none";
		if(position == null || position.equals("")) position = "none";
		if(duty == null || duty.equals("")) duty = "none";
		if(job == null || job.equals("")) job = "none";
		if(employee_type == "1" || job.equals("1")) employee_type = "정규직";
		
		String key = EmailChkHandler.getKey();
		
		// Auth_tbl 에 삽입하기 위한 map
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("ID", employee_id);
		map.put("password", encryptPwd);
		map.put("key", key);
		
		int insertAuthCnt = dao.insertEmployeeAuth(map);
		System.out.println("insertAuthCnt : " + insertAuthCnt);
		
		int insertCnt = 0;
		
		if(insertAuthCnt != 0) {
			// employee vo에 담기
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
			vo.setHost_code(host_code);
			
			// insert 
			insertCnt = dao.insertEmployee(vo);
		}
		System.out.println("insertCnt : " + insertCnt);
		
		model.addAttribute("insertCnt", insertCnt);
	}

	// 근태 등록 처리
	@Override
	public void employeeAttendanceAction(HttpServletRequest req, Model model) {
		String employee_code = req.getParameter("employee_code");
		String employee_name = req.getParameter("employee_name");
		String employee_in = req.getParameter("employee_in");
		String employee_out = req.getParameter("employee_out");
		String late_early = req.getParameter("late_early");
		String temperature = req.getParameter("temperature");
		String covid_chk1 = req.getParameter("covid_chk1");
		String covid_chk2 = req.getParameter("covid_chk2");
		String covid_chk3 = req.getParameter("covid_chk3");
		
		System.out.println("late_early : " + late_early);
		
		
		
		
	}

	

	

}
