/*
 * 작성자 : 
 * 작성일 : 
 * 회계 관련 dao
 * 
*/
package com.spring.Creamy_CRM.Host_dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.Creamy_CRM.VO.AccountVO;

@Repository
public class AccountDAOImpl implements AccountDAO {
	
	@Autowired
	SqlSession sqlSessoin;
	
	// 매입매출 전표 목록
	@Override
	public List<AccountVO> getSlipList(String host_code) {
		AccountDAO dao = sqlSessoin.getMapper(AccountDAO.class);
		return dao.getSlipList(host_code);
	}
	
	// 매입매출 전표 등록
	@Override
	public int insertSlip(AccountVO vo) {
		AccountDAO dao = sqlSessoin.getMapper(AccountDAO.class);
		return dao.insertSlip(vo);
	}



}
