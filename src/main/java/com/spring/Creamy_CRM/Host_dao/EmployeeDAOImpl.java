/*
 * 작성자 : 
 * 작성일 : 
 * 회계 관련 dao
 * 
*/
package com.spring.Creamy_CRM.Host_dao;

import java.util.ArrayList;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.Creamy_CRM.VO.EmployeeVO;

@Repository
public class EmployeeDAOImpl implements EmployeeDAO {

	@Autowired
	SqlSession sqlSession;
	
	// 직원 목록 조회
	@Override
	public ArrayList<EmployeeVO> employeeList(String host_code) {
		EmployeeDAO dao = sqlSession.getMapper(EmployeeDAO.class);
		return dao.employeeList(host_code);
	}
	
	// 이미 직원 등록이 완료된 id인지 체크
	@Override
	public int chkEmployeeIdPreexisting(String employee_id) {
		EmployeeDAO dao = sqlSession.getMapper(EmployeeDAO.class);
		return dao.chkEmployeeIdPreexisting(employee_id);
	}
	
	// 직원 등록시 해당 id가 있는지 체크 
	@Override
	public int chkEmployeeIdAction(String ID) {
		EmployeeDAO dao = sqlSession.getMapper(EmployeeDAO.class);
		return dao.chkEmployeeIdAction(ID) + 2;
	}
	
	// 직원 id와 pwd를 Auth 테이블에 삽입 
	@Override
	public int insertEmployeeAuth(Map<String, Object> map) {
		EmployeeDAO dao = sqlSession.getMapper(EmployeeDAO.class);
		return dao.insertEmployeeAuth(map);
	}
	
	// 직원 등록
	@Override
	public int insertEmployee(EmployeeVO vo) {
		EmployeeDAO dao = sqlSession.getMapper(EmployeeDAO.class);
		return dao.insertEmployee(vo);
	}



	





}
