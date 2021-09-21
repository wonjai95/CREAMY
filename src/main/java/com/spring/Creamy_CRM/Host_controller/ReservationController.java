/*
 * CRM - 예약 controller 
 * 
*/
package com.spring.Creamy_CRM.Host_controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ReservationController {
	
	private static final Logger logger = LoggerFactory.getLogger(ReservationController.class);
	
	
	//예약 첫 페이지
	@RequestMapping("/host/reservation")
	public String reservation(HttpServletRequest req, Model model) {
		logger.info("url -> reservation");
		
		return "host/reservation/reservation";
	}
	//예약 요청
	@RequestMapping("/host/requestReservation")
	public String requestReservation(HttpServletRequest req, Model model) {
		logger.info("url -> requestReservation");
		
		return "host/reservation/requestReservation";
	}
	//예약 요청 이동
	@RequestMapping("/host/requestDetails")
	public String requestDetails(HttpServletRequest req, Model model) {
		logger.info("url -> requestDetails");
		
		return "host/reservation/requestDetails";
	}
	//예약 요청 상세페이지
	@RequestMapping("/host/requestDetail")
	public String requestDetail(HttpServletRequest req, Model model) {
		logger.info("url -> requestDetail");
		
		return "host/reservation/requestDetail";
	}
	//예약 등록
	@RequestMapping("/host/insertAction")
	public String insertAction(HttpServletRequest req, Model model) {
		logger.info("url -> insertAction");
		
		return "host/reservation/insertAction";
	}
	//예약 수정
	@RequestMapping("/host/modifyAction")
	public String modifyAction(HttpServletRequest req, Model model) {
		logger.info("url -> modifyAction");
		
		return "host/reservation/modifyAction";
	}
	//예약 취소
	@RequestMapping("/host/deleteAction")
	public String deleteAction(HttpServletRequest req, Model model) {
		logger.info("url -> deleteAction");
		
		return "host/reservation/deleteAction";
	}
	//예약 조회
	@RequestMapping("/host/showReservation")
	public String showReservation(HttpServletRequest req, Model model) {
		logger.info("url -> showReservation");
		
		return "host/reservation/showReservation";
	}
	
	
}

