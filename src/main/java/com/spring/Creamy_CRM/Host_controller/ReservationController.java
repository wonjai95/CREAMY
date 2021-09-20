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
		//예약 요청 상세페이지
		@RequestMapping("/host/requestDetail")
		public String requestDetail(HttpServletRequest req, Model model) {
			logger.info("url -> requestDetail");
			
			return "host/reservation/requestDetail";
		}
		//예약 조회
		@RequestMapping("/host/showReservation")
		public String showReservation(HttpServletRequest req, Model model) {
			logger.info("url -> showReservation");
			
			return "host/reservation/showReservation";
		}
		//예약 수정
		@RequestMapping("/host/modifyReservation")
		public String modifyReservation(HttpServletRequest req, Model model) {
			logger.info("url -> modifyReservation");
			
			return "host/reservation/modifyReservation";
		}
		//예약 등록
		@RequestMapping("/host/insertReservation")
		public String insertReservation(HttpServletRequest req, Model model) {
			logger.info("url -> reservation");
			
			return "host/reservation/insertReservation";
		}
		
		//test
		@RequestMapping("/host/test123")
		public String test123(HttpServletRequest req, Model model) {
			logger.info("url -> test123");
			
			return "host/reservation/test123";
		}
}

