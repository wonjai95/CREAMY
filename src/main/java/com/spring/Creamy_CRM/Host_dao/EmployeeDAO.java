/*
 * 작성자 : 
 * 작성일 : 
 * 직원 관련 dao
 * 
*/
package com.spring.Creamy_CRM.Host_dao;

import java.util.ArrayList;

import com.spring.Creamy_CRM.VO.EmployeeVO;

public interface EmployeeDAO {

	// 직원 목록 조회
	public ArrayList<EmployeeVO> employeeList(String host_code);
	
	// 직원 등록 
	public int insertEmployee(EmployeeVO vo);
	
}
