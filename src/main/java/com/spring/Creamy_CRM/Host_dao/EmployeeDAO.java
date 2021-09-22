/*
 * 작성자 : 
 * 작성일 : 
 * 직원 관련 dao
 * 
*/
package com.spring.Creamy_CRM.Host_dao;

import java.util.ArrayList;
import java.util.Map;

import com.spring.Creamy_CRM.VO.EmployeeVO;

public interface EmployeeDAO {

	// 직원 목록 조회
	public ArrayList<EmployeeVO> employeeList(String host_code);
	
	// 직원 상제 정보
	public EmployeeVO getEmployeeDetail(String employee_code);
	
	// 이미 직원 등록이 완료된 id인지 체크
	public int chkEmployeeIdPreexisting(String employee_id);
	
	// 직원 등록시 해당 id가 있는지 체크 
	public int chkEmployeeIdAction(String employee_id);
	
	// 직원 id와 pwd를 Auth 테이블에 삽입 
	public int insertEmployeeAuth(Map<String, Object> map);
	
	// 직원 등록 
	public int insertEmployee(EmployeeVO vo);
	
	
	
}
