/*
 * 작성자 : 주수림

 * 작성일 : 2021.09.23
 * 고객 예약 화면 및 그 처리 
 * 
*/
package com.spring.Creamy_CRM.User_service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface UserReservationService {

	// 고객 예약 페이지
	public void custBooking(HttpServletRequest req, Model model);
	
	// 고객 예약 가능 시간 표시
	public void bookingTimeTable(HttpServletRequest req, Model model);
	
	
}
