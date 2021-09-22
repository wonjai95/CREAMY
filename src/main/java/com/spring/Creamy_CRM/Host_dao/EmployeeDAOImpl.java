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

import com.spring.Creamy_CRM.VO.AttendanceVO;
import com.spring.Creamy_CRM.VO.EmployeeVO;
import com.spring.Creamy_CRM.VO.LeaveVO;
import com.spring.Creamy_CRM.VO.WorkingHoursVO;

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
	
	// 직원 상제 정보
	@Override
	public EmployeeVO getEmployeeDetail(String employee_code) {
		EmployeeDAO dao = sqlSession.getMapper(EmployeeDAO.class);
		return dao.getEmployeeDetail(employee_code);
	}
	
	// 직원의 근태 정보
	public ArrayList<AttendanceVO> getAttendanceList(String employee_code){
		EmployeeDAO dao = sqlSession.getMapper(EmployeeDAO.class);
		return dao.getAttendanceList(employee_code);
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

	// 근태 - 출근 insert
	@Override
	public int insertAttendance(AttendanceVO vo) {
		EmployeeDAO dao = sqlSession.getMapper(EmployeeDAO.class);
		return dao.insertAttendance(vo);
	}

	// 근태 - 퇴근시 출근 기록 확인
	@Override
	public int chkIn(AttendanceVO vo) {
		EmployeeDAO dao = sqlSession.getMapper(EmployeeDAO.class);
		return dao.chkIn(vo);
	}

	// 근태 - 퇴근시 attendance_tbl 퇴근시간 update
	@Override
	public int updateAttendanceOut(AttendanceVO vo) {
		EmployeeDAO dao = sqlSession.getMapper(EmployeeDAO.class);
		return dao.updateAttendanceOut(vo);
	}

	// 근무시간 등록 여부 체크
	@Override
	public int chkWorkingHours(String employee_code) {
		EmployeeDAO dao = sqlSession.getMapper(EmployeeDAO.class);
		return dao.chkWorkingHours(employee_code);
	}

	// 근무시간 등록 
	@Override
	public int insertWorkingHours(WorkingHoursVO vo) {
		EmployeeDAO dao = sqlSession.getMapper(EmployeeDAO.class);
		return dao.insertWorkingHours(vo);
	}

	// 근무시간 update
	@Override
	public int updateWorkingHours(WorkingHoursVO vo) {
		EmployeeDAO dao = sqlSession.getMapper(EmployeeDAO.class);
		return dao.updateWorkingHours(vo);
	}

	// 휴가 등록 insert
	@Override
	public int insertLeave(LeaveVO vo) {
		EmployeeDAO dao = sqlSession.getMapper(EmployeeDAO.class);
		return dao.insertLeave(vo);
	}




	





}
