package com.spring.Creamy_CRM.Host_dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.Creamy_CRM.VO.HostVO;
import com.spring.Creamy_CRM.VO.OperatingScheVO;
import com.spring.Creamy_CRM.VO.ZipcodeVO;

@Repository
public class HostDaoImpl implements HostDao{
	
	@Autowired
	private SqlSession sqlSession;
	
	//호스트 정보
	@Override
	public HostVO selectInfo(String host_code) {
		return sqlSession.selectOne("com.spring.Creamy_CRM.Host_dao.HostDao.selectInfo",host_code);
	}


	@Override
	public List<OperatingScheVO> getWorkTime(String host_code) {
		return sqlSession.selectList("com.spring.Creamy_CRM.Host_dao.HostDao.getWorkTime", host_code);
	}


	@Override
	public int chkScheSet(Map<String, String> map) {
		return sqlSession.selectOne("com.spring.Creamy_CRM.Host_dao.HostDao.chkScheSet",map);
	}

	@Override
	public int setOeratingTime(OperatingScheVO vo) {
		return sqlSession.insert("com.spring.Creamy_CRM.Host_dao.HostDao.setOeratingTime",vo);
	}

	@Override
	public int altOperatingTime(OperatingScheVO vo) {
		return sqlSession.update("com.spring.Creamy_CRM.Host_dao.HostDao.altOperatingTime",vo);
	}

	//zip코드 존재확인
	@Override
	public int chkZipcode(String zipcode) {
		return sqlSession.selectOne("com.spring.Creamy_CRM.Host_dao.HostDao.chkZipcode", zipcode);
	}
	
	//zip코드 삽입
	@Override
	public int insertZipcode(ZipcodeVO zipcodeVo) {
		return sqlSession.insert("com.spring.Creamy_CRM.Host_dao.HostDao.insertZipcode",zipcodeVo);
	}

	//사업자 등록
	@Override
	public int insertCompany(HostVO vo) {
		return sqlSession.insert("com.spring.Creamy_CRM.Host_dao.HostDao.insertCompany", vo);
	}
	
	
	
	
}
