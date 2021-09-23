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
import com.spring.Creamy_CRM.VO.LeaveVO;
import com.spring.Creamy_CRM.VO.SalaryContractVO;
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
		String host_code = (String) req.getSession().getAttribute("code");
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
	
	// 직원 상세 정보 수정 처리
	@Override
	public void updateEmployeeAction(HttpServletRequest req, Model model) {
		String employee_code = req.getParameter("employee_code");
		String employee_name = req.getParameter("employee_name");
		String gender = req.getParameter("employee_gender");
		String employee_gender = "";
		if(gender == "남성") {
			employee_gender = "M";
		} else {
			employee_gender = "F";
		}
		String employee_email = req.getParameter("employee_email");
		String employee_ph = req.getParameter("employee_ph");
		String employee_address = req.getParameter("employee_address");
		String department = req.getParameter("department");
		String position = req.getParameter("position");
		String duty = req.getParameter("duty");
		String job = req.getParameter("job");
		String employee_type = req.getParameter("employee_type");
		int annual_leave_cnt = Integer.parseInt(req.getParameter("annual_leave_cnt"));
		// String -> java.sql.Date 변환 방법
		String hireDate = req.getParameter("employee_hireDate");
		System.out.println("hireDate : " + hireDate);
		Date employee_hireDate = Date.valueOf(hireDate);
		
		String resignDate = req.getParameter("employee_resignDate");
		System.out.println("resignDate : " + resignDate);
		Date employee_resignDate;
		if(resignDate == null || resignDate.equals("")) {
			employee_resignDate = null;
		} else {
			employee_resignDate = Date.valueOf(resignDate);
		}
		System.out.println("employee_resignDate : " + employee_resignDate);
		
		EmployeeVO vo = new EmployeeVO();
		vo.setEmployee_code(employee_code);
		vo.setEmployee_name(employee_name);
		vo.setEmployee_gender(employee_gender);
		vo.setEmployee_email(employee_email);
		vo.setEmployee_ph(employee_ph);
		vo.setEmployee_address(employee_address);
		vo.setDepartment(department);
		vo.setPosition(position);
		vo.setDuty(duty);
		vo.setJob(job);
		vo.setEmployee_type(employee_type);
		vo.setAnnual_leave_cnt(annual_leave_cnt);
		vo.setEmployee_hireDate(employee_hireDate);
		vo.setEmployee_resignDate(employee_resignDate);
		
		int updateCnt = dao.updateEmployee(vo);
		
		System.out.println("updateCnt : " + updateCnt);
		
		model.addAttribute("updateCnt", updateCnt);
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
		String pwd = req.getParameter("password");
		// 비밀번호 암호화
		String encryptPwd = encoder.encode(pwd);
		
		String employee_gender = req.getParameter("employee_gender");
		int employee_age = Integer.parseInt(req.getParameter("employee_age"));

		String employee_email1 = req.getParameter("employee_email1");
		String employee_email2 = req.getParameter("employee_email2");
		String employee_email = employee_email1 + "@" + employee_email2;
		
		String employee_ph1 = req.getParameter("employee_ph1");
		String employee_ph2 = req.getParameter("employee_ph2");
		String employee_ph3 = req.getParameter("employee_ph3");
		String employee_ph = employee_ph1 + "-" + employee_ph2 + "-" + employee_ph3;
		
		String employee_address = req.getParameter("employee_address");
		String department = req.getParameter("department");
		String position = req.getParameter("position");
		String duty = req.getParameter("duty");
		String job = req.getParameter("job");
		String employee_type = req.getParameter("employee_type");
		int annual_leave_cnt = Integer.parseInt(req.getParameter("annual_leave_cnt"));
		
		String host_code = (String) req.getSession().getAttribute("code");
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
			
			// 이미 출근을 등록한 경우
			if(inChk == 1) {
				inChk = 3;
				
			// 출근 정상 등록
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
		
		int chkCnt = dao.chkWorkingHours(employee_code);
		int insertCnt = 0;
		int updateCnt = 0;
		
		// 해당 직원에 대한 근무시간이 등록되어있지 않을때 신규 insert
		if(chkCnt == 0) {
			insertCnt = dao.insertWorkingHours(vo);
			System.out.println("insertCnt : " + insertCnt);
			
		// 해당 직원에 대한 근무시간이 등록되어있을 때 update
		} else {
			updateCnt = dao.updateWorkingHours(vo);
			System.out.println("updateCnt : " + updateCnt);
			
			// update 진행시 insertCnt = 2로 설정
			insertCnt = 2;
		}
		
		model.addAttribute("insertCnt", insertCnt);
		model.addAttribute("updateCnt", updateCnt);
		
	}

	// 휴가 등록 페이지
	@Override
	public void regLeavePage(HttpServletRequest req, Model model) {
		String employee_code = req.getParameter("employee_code");
		
		EmployeeVO dto = dao.getEmployeeDetail(employee_code);
		
		model.addAttribute("dto", dto);
	}

	// 휴가 등록 처리
	@Override
	public void leaveAction(HttpServletRequest req, Model model) {
		String employee_code = req.getParameter("employee_code");
		String strStartDate = req.getParameter("leave_start");
		String strEndDate = req.getParameter("leave_end");
		int leave_total_days = Integer.parseInt(req.getParameter("leave_total_days"));
		String leave_memo = req.getParameter("leave_memo");
		String leave_reason = req.getParameter("leave_reason");
		String employee_ph1 = req.getParameter("employee_ph1");
		String employee_ph2 = req.getParameter("employee_ph2");
		String employee_ph3 = req.getParameter("employee_ph3");
		String emergency_contact = employee_ph1 + "-" + employee_ph2 + "-" + employee_ph3;
		
		Date leave_date = Date.valueOf(strStartDate);
		Date leave_end = Date.valueOf(strEndDate);
	
		if(leave_memo == null || leave_memo.equals("")) leave_memo = "0";
		if(leave_reason == null || leave_reason.equals("")) leave_reason = "0";
		if(employee_ph1 == null || employee_ph1.equals("")) employee_ph1 = "0";
		if(employee_ph2 == null || employee_ph2.equals("")) employee_ph2 = "0";
		if(employee_ph3 == null || employee_ph3.equals("")) employee_ph3 = "0";
		
		
		LeaveVO vo = new LeaveVO();
		vo.setEmployee_code(employee_code);
		vo.setLeave_date(leave_date);
		vo.setLeave_end(leave_end);
		vo.setLeave_usage_cnt(leave_total_days);
		vo.setLeave_reason(leave_reason);
		vo.setLeave_memo(leave_memo);
		vo.setEmergency_contact(emergency_contact);
		
		// 휴가 신청 일수와 연차 비교
		EmployeeVO dto = dao.getEmployeeDetail(employee_code);
		int annual_leave_cnt = dto.getAnnual_leave_cnt();
		int annual_leave_usage = dto.getAnnual_leave_usage();
		int insertCnt = 0;
		
		// 해당 직원의 연차 일수 초과 확인
		if(annual_leave_cnt - annual_leave_usage - leave_total_days < 0) {
			insertCnt = 2;
			
		// 초과 X(정상 휴가 등록)
		} else {
			insertCnt = dao.insertLeave(vo);
		}
		System.out.println("insertCnt : " + insertCnt);
		
		model.addAttribute("insertCnt", insertCnt);
	}

	// 급여 계약 처리 
	@Override
	public void salaryContractAction(HttpServletRequest req, Model model) {
		String employee_code = req.getParameter("employee_code");
		String employee_name = req.getParameter("employee_name");
		int monthly_salary = Integer.parseInt(req.getParameter("mon_sal"));
		String annual_salary = req.getParameter("salary");
		String payment_date = req.getParameter("payment_date");
		String bankInfo = req.getParameter("account");
		String con_start = req.getParameter("contract_start");
		String con_end = req.getParameter("contract_end");
		
		String annual_salary_int = annual_salary.replace(",", "");
		
		String[] bankList = bankInfo.split("/");
		System.out.println("은행  : " + bankList[0]);
		System.out.println("계좌번호  : " + bankList[1]);
		
		Date contract_start = Date.valueOf(con_start);
		Date contract_end = Date.valueOf(con_end);
		
		SalaryContractVO vo = new SalaryContractVO();
		vo.setEmployee_code(employee_code);
		vo.setMonthly_salary(monthly_salary);
		vo.setAnnual_salary(Integer.parseInt(annual_salary_int));
		vo.setPayment_date(payment_date);
		vo.setCon_start(contract_start);
		vo.setCon_end(contract_end);
		vo.setAccount_holder(employee_name);
		vo.setBank_name(bankList[0]);
		vo.setAccount_number(bankList[1]);
		
		// 은행 삽입
		int insertBankCnt = dao.insertBankInfo(vo);
		int insertCnt = 0;
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("account_holder", employee_name);
		map.put("account_number", bankList[1]);
		
		// 은행 코드 가져오기
		String bank_code = dao.getBankCode(map);
		vo.setBank_code(bank_code);
		
		// 급여계약 insert
		if(insertBankCnt != 0) {
			insertCnt = dao.insertSalaryContract(vo);
			System.out.println("insertCnt : " + insertCnt);
		}
		
		model.addAttribute("insertCnt", insertCnt);
	}
	
	
	
	

	

	

}
