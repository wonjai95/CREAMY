/*
 * 작성자 : 
 * 작성일 : 
 * 직원 관련 service interface
 * 
*/
package com.spring.Creamy_CRM.Host_service;

import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.spring.Creamy_CRM.Host_dao.EmployeeDAOImpl;
import com.spring.Creamy_CRM.VO.AttendanceVO;
import com.spring.Creamy_CRM.VO.EmployeeVO;
import com.spring.Creamy_CRM.VO.WorkingHoursVO;
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
		
		// 직원 상세 정보 가져오기
		EmployeeVO dtos = dao.getEmployeeDetail(employee_code);
		
		// 직원 근태 정보 가져오기
		ArrayList<AttendanceVO> attList = dao.getAttendanceList(employee_code);
		
		model.addAttribute("dtos", dtos);
		model.addAttribute("attList", attList);
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
		String employee_in = req.getParameter("employee_in");
		String employee_out = req.getParameter("employee_out");
		String inout_time = req.getParameter("inout_time");
		String late_early = req.getParameter("late_early");
		String temperature = req.getParameter("temperature");
		String covid_chk1 = req.getParameter("covid_chk1");
		String covid_chk2 = req.getParameter("covid_chk2");
		String covid_chk3 = req.getParameter("covid_chk3");
		String memo = req.getParameter("memo");
		
		if(late_early == null || late_early.equals("")) late_early = "0";
		
		System.out.println("late_early : " + late_early);
		System.out.println("employee_in : " + employee_in);
		System.out.println("employee_out : " + employee_out);
		
		// 날짜와 시간 
		Date attendance_date = new Date(System.currentTimeMillis());
//		SimpleDateFormat dateFormat1 = new SimpleDateFormat("yyyy/MM/dd");
//		SimpleDateFormat dateFormat2 = new SimpleDateFormat("HH:mm");
//		String getDate = dateFormat1.format(attendance_date);
//		String getTime = dateFormat2.format(attendance_date);
//		System.out.println("getDate : " + getDate);
//		System.out.println("getTime : " + getTime);
//		System.out.println("inout_time : " + inout_time);
		
		AttendanceVO vo = new AttendanceVO();
		vo.setEmployee_code(employee_code);
		vo.setAttendance_date(attendance_date);
		vo.setTemperature(temperature);
		vo.setExamination_chk1(covid_chk1);
		vo.setExamination_chk2(covid_chk2);
		vo.setExamination_chk3(covid_chk3);
		vo.setMemo(memo);
		
		int insertCnt = 0;
		int inChk = 0;
		int updateCnt = 0;
		
		// 출근일 경우 attendance_tbl에 바로 삽입
		if(employee_in.equals("출근")) {
			vo.setCheck_in_time(inout_time);
			vo.setLateChk(late_early);
			vo.setCheck_out_time("0");
			
			inChk = dao.chkIn(vo);
			
			if(inChk == 1) {
				inChk = 3;
			} else {
				insertCnt = dao.insertAttendance(vo);
				System.out.println("insertCnt : " + insertCnt);
			}
			
		// 퇴근일 경우 
		} else if(employee_out.equals("퇴근")){
			// 출근을 찍었는지 먼저 체크
			inChk = dao.chkIn(vo);
			// 퇴근 처리 시 inserCnt = 9로 설정
			insertCnt = 9;
			
			// attendance_tbl을 update - check_out_time만 삽입
			if(inChk == 1) {
				vo.setCheck_out_time(inout_time);
				updateCnt = dao.updateAttendanceOut(vo);
				System.out.println("updateCnt : " + updateCnt);
			} else {
				// 출근을 먼저 찍으라는 alert
				inChk = 2;
			}
			
		}
		System.out.println("inChk : " + inChk);
		
		// 출근 insert
		model.addAttribute("insertCnt",insertCnt);
		// 퇴근 찍기 전에 출근 정보 있는지 확인, 중복 출근 체크
		model.addAttribute("inChk",inChk);
		// 퇴근 update
		model.addAttribute("updateCnt",updateCnt);
		
	}

	// 근무시간 등록 처리
	@Override
	public void employeeWorkHoursAction(HttpServletRequest req, Model model) {
		String employee_code = req.getParameter("employee_code");
		String mon_in = req.getParameter("mon_in_time");
		String mon_out = req.getParameter("mon_out_time");
		String tue_in = req.getParameter("tue_in_time");
		String tue_out = req.getParameter("tue_out_time");
		String wed_in = req.getParameter("wed_in_time");
		String wed_out = req.getParameter("wed_out_time");
		String thu_in = req.getParameter("thur_in_time");
		String thu_out = req.getParameter("thur_out_time");
		String fri_in = req.getParameter("fri_in_time");
		String fri_out = req.getParameter("fri_out_time");
		String sat_in = req.getParameter("sat_in_time");
		String sat_out = req.getParameter("sat_out_time");
		String sun_in = req.getParameter("sun_in_time");
		String sun_out = req.getParameter("sun_out_time");
		String late_criteria = req.getParameter("late_criteria");
		String early_criteria = req.getParameter("early_criteria");
		int weekly_hours = Integer.parseInt(req.getParameter("total_workhours_inMinutes"));
		
		
		System.out.println("mon_in : " + mon_in);
		System.out.println("mon_out : " + mon_out);
		System.out.println("tue_in : " + tue_in);
		System.out.println("tue_out : " + tue_out);
		System.out.println("sun_in : " + sun_in);
		System.out.println("sun_out : " + sun_out);
		
		WorkingHoursVO vo = new WorkingHoursVO();
		vo.setEmployee_code(employee_code);
		vo.setMon_in(mon_in);
		vo.setMon_out(mon_out);
		vo.setTue_in(tue_in);
		vo.setTue_out(tue_out);
		vo.setWed_in(wed_in);
		vo.setWed_out(wed_out);
		vo.setThu_in(thu_in);
		vo.setThu_out(thu_out);
		vo.setFri_in(fri_in);
		vo.setFri_out(fri_out);
		vo.setSat_in(sat_in);
		vo.setSat_out(sat_out);
		vo.setSun_in(sun_in);
		vo.setSun_out(sun_out);
		vo.setLate_criteria(late_criteria);
		vo.setEarly_criteria(early_criteria);
		vo.setWeekly_hours(weekly_hours);
		
		
	}

	

	

}
