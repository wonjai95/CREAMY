package com.spring.Creamy_CRM.Host_dao;

import java.util.Map;

import com.spring.Creamy_CRM.VO.OperatingScheVO;

public interface HostDao {
	
	int chkScheSet(Map<String, String> map);
	int setOeratingTime(OperatingScheVO vo);
	int altOperatingTime(OperatingScheVO vo);
	
}
