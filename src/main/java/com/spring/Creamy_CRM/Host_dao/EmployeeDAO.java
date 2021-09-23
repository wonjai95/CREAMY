/*
 * 작성자 : 
 * 작성일 : 
 * 직원 관련 dao
 * 
*/
package com.spring.Creamy_CRM.Host_dao;

import java.util.ArrayList;
import java.util.Map;

import com.spring.Creamy_CRM.VO.AttendanceVO;
import com.spring.Creamy_CRM.VO.EmployeeVO;
import com.spring.Creamy_CRM.VO.LeaveVO;
import com.spring.Creamy_CRM.VO.SalaryContractVO;
import com.spring.Creamy_CRM.VO.WorkingHoursVO;

public interface EmployeeDAO {

	// 직원 목록 조회
	public ArrayList<EmployeeVO> employeeList(String host_code);
	
	// 직원 상제 정보
	public EmployeeVO getEmployeeDetail(String employee_code);
	
	// 직원 수정 처리
	public int updateEmployee(EmployeeVO vo);
	
	// 직원의 근태 정보
	public ArrayList<AttendanceVO> getAttendanceList(String employee_code);
	
	// 이미 직원 등록이 완료된 id인지 체크
	public int chkEmployeeIdPreexisting(String employee_id);
	
	// 직원 등록시 해당 id가 있는지 체크 
	public int chkEmployeeIdAction(String employee_id);
	
	// 직원 id와 pwd를 Auth 테이블에 삽입 
	public int insertEmployeeAuth(Map<String, Object> map);
	
	// 직원 등록 
	public int insertEmployee(EmployeeVO vo);
	
	// 근태 - 출근 insert
	public int insertAttendance(AttendanceVO vo);
	
	// 근태 - 퇴근시 출근 기록 확인
	public int chkIn(AttendanceVO vo);
	
	// 근태 - 퇴근시 attendance_tbl 퇴근시간 update
	public int updateAttendanceOut(AttendanceVO vo);
	
	// 근무시간 등록 여부 체크
	public int chkWorkingHours(String employee_code);
	
	// 근무시간 등록 
	public int insertWorkingHours(WorkingHoursVO vo);
	
	// 근무시간 update
	public int updateWorkingHours(WorkingHoursVO vo);
	
	// 휴가 등록 insert
	public int insertLeave(LeaveVO vo);
	
	// 계좌 등록
	public int insertBankInfo(SalaryContractVO vo);
	
	// 은행코드 조회
	public String getBankCode(Map<String, Object> map);
	
	// 급여 계약 등록 
	public int insertSalaryContract(SalaryContractVO vo);
	
	
}
