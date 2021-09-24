package com.spring.Creamy_CRM.Host_dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.Creamy_CRM.VO.OperatingScheVO;

@Repository
public class HostDaoImpl implements HostDao{
	
	@Autowired
	private SqlSession sqlSession;
	
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
	
	
	
	
	
	
}
