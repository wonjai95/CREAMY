package com.spring.Creamy_CRM.Host_service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.spring.Creamy_CRM.Host_dao.HostDao;
import com.spring.Creamy_CRM.VO.HostVO;
import com.spring.Creamy_CRM.VO.OperatingScheVO;

@Service
public class HostServiceImpl implements HostService {

	@Autowired
	private HostDao dao;

	// 마이페이지 정보요청
	@Override
	public void getHostInfo(HttpServletRequest req, Model model) {
		String host_code = (String) req.getSession().getAttribute("code");
		
		//내정보
		HostVO hostVo = dao.selectInfo(host_code);
		System.out.println(hostVo.getHost_code());
		
		model.addAttribute("hostVo", hostVo);
		
		//시간설정탭
		String[] days = { "월요일", "화요일", "수요일", "목요일", "금요일", "토요일", "일요일" };
		List<String> dayList = new ArrayList<String>();
		for (int i = 0; i < days.length; i++) {
			dayList.add(days[i]);
		}
		model.addAttribute("dayList", dayList);

		OperatingScheVO[] operArray = new OperatingScheVO[WEEK];
		
		List<OperatingScheVO> list = dao.getWorkTime(host_code);
		
		if(list.size() != 0) {
			for (int i = 0; i < list.size(); i++) {
				OperatingScheVO vo = list.get(i);
				int idx = Integer.parseInt(vo.getOperating_day());
				operArray[idx-1] = vo;
			}
			model.addAttribute("operArray",operArray);
		}
		
		
		
	}

	// 시간설정
	@Override
	public void setWorkTime(HttpServletRequest req, Model model) {

		String code = (String) req.getSession().getAttribute("code");

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
			if (selectCnt != 1) {
				count += dao.setOeratingTime(vo);
			} else {
				count += dao.altOperatingTime(vo);
			}

		}

		System.out.println(count + " 개 항목 등록 및 수정");
		model.addAttribute("count", count);

	}

}
