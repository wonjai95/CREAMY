package com.spring.Creamy_CRM.Host_service;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.spring.Creamy_CRM.Host_dao.HostDao;
import com.spring.Creamy_CRM.VO.OperatingScheVO;

@Service
public class HostServiceImpl implements HostService {

	@Autowired
	private HostDao dao;
		
	@Override
	public void setWorkTime(HttpServletRequest req, Model model) {
		
		String code = (String)req.getSession().getAttribute("code");
		
		String[] day = req.getParameterValues("day");
		String[] open = req.getParameterValues("open");
		String[] close = req.getParameterValues("close");
		Map<String, String> map = new HashMap<String, String>();
		map.put("host_code", code);
		OperatingScheVO vo = new OperatingScheVO();
		vo.setHost_code(code);
		
		int count = 0;
		for (int i = 0; i < day.length; i++) {
			map.put("operating_day", day[i]);
			vo.setOperating_day(day[i]);
			vo.setOpen_sche(open[i]);
			vo.setClose_sche(close[i]);
			int selectCnt = dao.chkScheSet(map);
			if(selectCnt != 1) {
				count += dao.setOeratingTime(vo);
			}else {
				count += dao.altOperatingTime(vo);
			}
			
		}
		
		System.out.println(count +" 개 항목 등록 및 수정");
		
	}
	
}
