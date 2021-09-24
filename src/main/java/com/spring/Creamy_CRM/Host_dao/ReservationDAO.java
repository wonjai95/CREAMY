/*
 * 작성자 : 이시현
 * 작성일 : 2021-09-20 ~ 2021-09-20
 * 예약 관련 dao
 * 
*/
package com.spring.Creamy_CRM.Host_dao;

import java.util.List;
import java.util.Map;

import com.spring.Creamy_CRM.VO.ReservationVO;


public interface ReservationDAO {

//======= 예약요청 탭 =======	
	// 예약요청 목록 갯수 구하기
	public int getRequestCnt();
	
	// 예약요청 목록 조회
	public List<ReservationVO> getRequestList(Map<String, Object> map);
	
	// 예약요청 상세 페이지, 수정 상세 페이지
	public ReservationVO getRequestDetail(Map<String, Object> map);
	
	// 예약요청 수정 처리 페이지
	public int updateRequest(ReservationVO vo);
	
	// 예약요청 삭제 처리 페이지
	public int deleteRequest(int num);
	
//======= 예약조회 탭 =======
	// 예약조회 목록 갯수 구하기
	public int getCompleteCnt();
	
	// 예약요청 목록 조회
	public List<ReservationVO> getCompleteList(Map<String, Object> map);
	
	// 예약조회 상세 페이지, 수정 상세 페이지
	//public void reservationVO getCompleteDetail(int num);
		
	
}
