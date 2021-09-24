/*
 * 작성자 : 주수림

 * 작성일 : 2021.09.23
 * 고객 예약 화면 및 그 처리 
 * 
*/
package com.spring.Creamy_CRM.User_service;

import java.text.SimpleDateFormat;
import java.time.LocalTime;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.spring.Creamy_CRM.User_dao.UserReservationDAOImpl;
import com.spring.Creamy_CRM.VO.HostVO;

@Service
public class UserReservationServiceImpl implements UserReservationService {

	@Autowired
	UserReservationDAOImpl dao;
	
	// 고객 매장 선택 페이지
	@Override
	public void selectHost(HttpServletRequest req, Model model) {
		ArrayList<HostVO> list = (ArrayList<HostVO>) dao.selectHost();
		model.addAttribute("dtos", list);
	}
	
	// 고객 예약 페이지
	@Override
	public void custBooking(HttpServletRequest req, Model model) {
		
	}

	// 고객 예약 가능 시간 표시
	@Override
	public void bookingTimeTable(HttpServletRequest req, Model model) {
		String host_code = req.getParameter("host_code");
		System.out.println("host_code : " + host_code);
		String day = req.getParameter("day");
		String curtime = req.getParameter("time");
		String selectDate = req.getParameter("selectDate");
		System.out.println("day : " + day);
		System.out.println("curtime : " + curtime);
		System.out.println("selectDate : " + selectDate);
		
		// 해당 사장님의 해당 요일 영업시간 조회
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("host_code", host_code);
		map.put("operating_day", day); 				// 일 ~ 토 : 0~6
		
		HostVO vo = dao.getOperatingInfo(map);
		String open_sche = vo.getOpen_sche();
		String close_sche = vo.getClose_sche();
		System.out.println("open_sche : " + open_sche);
		System.out.println("close_sche : " + close_sche);
		
		// 현재 날짜
		Date today = new Date(System.currentTimeMillis());
		SimpleDateFormat dateFmt = new SimpleDateFormat("yyyy-MM-dd");
		String fmtToday = dateFmt.format(today);
		
		LocalTime curTimeFmt = LocalTime.parse(curtime);
		LocalTime openTimeFmt = LocalTime.parse(open_sche);
		
		LocalTime start = null;
		
		if(fmtToday.equals(selectDate)) {
			System.out.println("날짜 동일");
			
			// 현재시간(curTimeFmt)이 영업시작시간(openTimeFmt)보다 늦다면
			if(curTimeFmt.isAfter(openTimeFmt)) {
				System.out.println("현재시간(curTimeFmt)이 영업시작시간(openTimeFmt)보다 늦음");
				start = LocalTime.parse(curtime);
			} else {
				System.out.println("현재시간(curTimeFmt)이 영업시작시간(openTimeFmt)보다 빠름");
				start = LocalTime.parse(open_sche);
			}
			
		} else {
			System.out.println("날짜 동일하지 않음");
			start = LocalTime.parse(open_sche);
		}
		System.out.println("start 시간 : " + start);
		
		// 영업 시작 시간과 종료 시간을 LocalTime 형태로 변환
		ArrayList<String> dtos = new ArrayList<String>();
		LocalTime end = LocalTime.parse(close_sche);
		String timeSche = start.toString();
		String endTime = end.toString();
		dtos.add(timeSche);
		int i = 1;
		
		do {
			// 1시간씩 증가시켜 주기(start.plus(1, ChronoUnit.HOURS)로 하면 start 시간에 1시간만 더해짐. 누적시키기 위해 i 사용 
			// ex. start가 09:00이면 timeSche는 계속 10:00 (sum += 1이 아니라 sum + 1임) 
			timeSche = start.plus(i, ChronoUnit.HOURS).toString();
			System.out.println("timeSche : " + timeSche);
			dtos.add(timeSche);
			i++;
			
		} while(!timeSche.equals(endTime));
		
		model.addAttribute("dtos", dtos);
		
	}

	// 회원 예약 가능한 담당자 표시
	@Override
	public void bookingManagerTable(HttpServletRequest req, Model model) {
		String selectDay = req.getParameter("selectDay");
		String selectTime = req.getParameter("selectTime");
		int chkTime = Integer.parseInt(selectTime.split(":")[0]);
		String host_code = req.getParameter("host_code");
		
		System.out.println("selectDay : " + selectDay);
		System.out.println("selectTime : " + selectTime);
		System.out.println("chkTime : " + chkTime);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("selectDay", selectDay);
		map.put("host_code", host_code);
		map.put("selectTime", selectTime);
		
		List<HostVO> dtos = dao.getAvailableManager(map);
		System.out.println("직원 : " + dtos.get(0).getEmployee_code());
		model.addAttribute("dtos", dtos);
		
	}

	

}
