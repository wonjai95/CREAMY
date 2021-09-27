package com.spring.Creamy_CRM.Host_service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.expression.spel.ast.OpNE;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.spring.Creamy_CRM.Host_dao.HostDao;
import com.spring.Creamy_CRM.VO.HostVO;
import com.spring.Creamy_CRM.VO.OperatingScheVO;
import com.spring.Creamy_CRM.VO.ZipcodeVO;

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
		String temp = "";
		String front = "";
		String back = "";
		for (int i = 0; i < day.length; i++) {
			int idx = open[i].indexOf(":");
			temp = open[i].substring(idx);
			if(!temp.equals(":00")) {
				front = open[i].substring(0,idx);
				back = open[i].substring(idx);
				back = back.replace(back, ":00");
				String startTime = front + back;
				open[i] = startTime;
				System.out.println("시작 시간 : " + open[i]);
			}
			
			idx = close[i].indexOf(":");
			temp = close[i].substring(idx);
			if(!temp.equals(":00")) {
				front = close[i].substring(0,idx);
				back = close[i].substring(idx);
				back = back.replace(back, ":00");
				String endTime = front + back;
				close[i] = endTime;
				System.out.println("끝 시간 : " + close[i]);
			}
			
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

	//사업자정보 등록
	@Override
	public void addCompanyAction(HttpServletRequest req, Model model) {
		String host_code = (String)req.getSession().getAttribute("code");
		String zipcode = req.getParameter("zipcode");
		ZipcodeVO zipcodeVo = null;
		
		int chkZipcode = dao.chkZipcode(zipcode);
		if (chkZipcode != 1) {
			zipcodeVo = new ZipcodeVO();
			zipcodeVo.setZipcode(zipcode);
			zipcodeVo.setSido(req.getParameter("sido"));
			zipcodeVo.setGugun(req.getParameter("gugun"));
			int insertZipcode = dao.insertZipcode(zipcodeVo);
			System.out.println("insert zipcode - " + insertZipcode);
		}
		
		HostVO vo = new HostVO();
		vo.setHost_code(host_code);
		vo.setZipcode(zipcode);
		vo.setComp_condition(req.getParameter("comp_condition"));
		vo.setComp_type(req.getParameter("comp_type"));
		vo.setComp_address(req.getParameter("comp_address"));
		vo.setComp_res(req.getParameter("comp_res"));
		int insertCnt = dao.insertCompany(vo);
		
		model.addAttribute("insertCnt",insertCnt);
	}
	
	
	

}
