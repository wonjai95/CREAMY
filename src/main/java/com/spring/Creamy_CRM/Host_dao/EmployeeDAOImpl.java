/*
 * 작성자 : 
 * 작성일 : 
 * 회계 관련 dao
 * 
*/
package com.spring.Creamy_CRM.Host_dao;

import java.util.ArrayList;

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
	
	// 직원 등록
	@Override
	public int insertEmployee(EmployeeVO vo) {
		EmployeeDAO dao = sqlSession.getMapper(EmployeeDAO.class);
		return dao.insertEmployee(vo);
	}



}
