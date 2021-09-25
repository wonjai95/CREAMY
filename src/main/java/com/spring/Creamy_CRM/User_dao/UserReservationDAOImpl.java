/*
 * 작성자 : 주수림

 * 작성일 : 2021.09.23
 * 고객 예약 화면 및 그 처리 
 * 
*/
package com.spring.Creamy_CRM.User_dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.Creamy_CRM.VO.HostVO;
import com.spring.Creamy_CRM.VO.ReservationVO;

@Repository
public class UserReservationDAOImpl implements UserReservationDAO {

	@Autowired
	SqlSession sqlSession;
	
	// 고객 매장 선택 페이지
	@Override
	public List<HostVO> selectHost() {
		UserReservationDAO dao = sqlSession.getMapper(UserReservationDAO.class);
		return dao.selectHost();
	}

	// 해당 사장님의 해당 요일 영업시간 조회
	@Override
	public HostVO getOperatingInfo(Map<String, Object> map) {
		UserReservationDAO dao = sqlSession.getMapper(UserReservationDAO.class);
		return dao.getOperatingInfo(map);
	}

	// 회원 예약 가능한 담당자 표시
	@Override
	public List<HostVO> getAvailableManager(Map<String, Object> map) {
		UserReservationDAO dao = sqlSession.getMapper(UserReservationDAO.class);
		return dao.getAvailableManager(map);
	}

	// 해당 담당자의 예약 테이블 확인
	@Override
	public int getReservedManager(Map<String, Object> map) {
		UserReservationDAO dao = sqlSession.getMapper(UserReservationDAO.class);
		return dao.getReservedManager(map);
	}

	// 회원 예약 가능한 호실 표시
	@Override
	public List<ReservationVO> getAvailableRoom(String host_code) {
		UserReservationDAO dao = sqlSession.getMapper(UserReservationDAO.class);
		return dao.getAvailableRoom(host_code);
	}

	// 해당 날짜에 해당 호실 예약 현황
	@Override
	public List<ReservationVO> getBookedRoomTime(Map<String, Object> map) {
		UserReservationDAO dao = sqlSession.getMapper(UserReservationDAO.class);
		return dao.getBookedRoomTime(map);
	}

	// 호실 예약 처리
	@Override
	public int insertRoomBooking(ReservationVO vo) {
		UserReservationDAO dao = sqlSession.getMapper(UserReservationDAO.class);
		return dao.insertRoomBooking(vo);
	}

	// 예약 신청 시간 가능 여부 체크
	@Override
	public int chkRoomBooking(ReservationVO vo) {
		UserReservationDAO dao = sqlSession.getMapper(UserReservationDAO.class);
		return dao.chkRoomBooking(vo);
	}
	
	

}
