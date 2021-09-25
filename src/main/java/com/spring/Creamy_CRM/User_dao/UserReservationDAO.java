/*
 * 작성자 : 주수림

 * 작성일 : 2021.09.23
 * 고객 예약 화면 및 그 처리 
 * 
*/
package com.spring.Creamy_CRM.User_dao;


import java.util.List;
import java.util.Map;

import com.spring.Creamy_CRM.VO.HostVO;
import com.spring.Creamy_CRM.VO.ReservationVO;

public interface UserReservationDAO {

	// 고객 매장 선택 페이지
	public List<HostVO> selectHost();
	
	// 해당 사장님의 해당 요일 영업시간 조회
	public HostVO getOperatingInfo(Map<String, Object> map);
	
	// 회원 예약 가능한 담당자 표시
	public List<HostVO> getAvailableManager(Map<String, Object> map);
	
	// 해당 담당자의 예약 테이블 확인
	public int getReservedManager(Map<String, Object> map);
	
	// 회원 예약 가능한 호실 표시
	public List<ReservationVO> getAvailableRoom(String host_code);

	// 해당 날짜에 해당 호실 예약 현황
	public List<ReservationVO> getBookedRoomTime(Map<String, Object> map);
	
	// 호실 예약 처리
	public int insertRoomBooking(ReservationVO vo);
	
	// 예약 신청 시간 가능 여부 체크
	public int chkRoomBooking(ReservationVO vo);
	
}
