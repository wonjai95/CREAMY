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

}
