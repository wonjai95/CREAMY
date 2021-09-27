package com.spring.Creamy_CRM.Host_dao;

import java.util.List; 
import java.util.Map;

import com.spring.Creamy_CRM.VO.HostVO;
import com.spring.Creamy_CRM.VO.OperatingScheVO;

public interface HostDao {
	
	
	//호스트 정보
	HostVO selectInfo(String host_code);
	
	List<OperatingScheVO> getWorkTime(String host_code);
	
	
	int chkScheSet(Map<String, String> map);
	int setOeratingTime(OperatingScheVO vo);
	int altOperatingTime(OperatingScheVO vo);
	
	
	
	
}
