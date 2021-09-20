/*
 * 작성자 : 정지은
 * 작성일 : 2021.09.15
 * 프로젝트 실행 시 제일 첫 메인화면 - 고객 화면이 될 예정
 * 
*/
package com.spring.Creamy_CRM.User_controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.Creamy_CRM.Host_controller.MainController;
import com.spring.Creamy_CRM.Host_service.LoginServiceImpl;

@Controller
public class MainwebController {
	
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	@Autowired
	LoginServiceImpl service_login;
	
	//첫 홈화면
	@RequestMapping("/home")
	public String home(HttpServletRequest req, Model model) {
		logger.info("url -> home");
		
		return "mainweb/home";
	}
	
	//로그인 화면
	@RequestMapping("/login")
	public String login() {
		logger.info("url => login");
		
		return "mainweb/login";
	}
	
	//회원가입
	@RequestMapping("/signIn")
	public String SignIn() {
		logger.info("url -> signIn");
		
		return "mainweb/signIn";
	}
	
	//회원가입 처리 - 끝나면 홈화면으로 return
	@RequestMapping("/signInAction")
	public String signInAction(HttpServletRequest req, Model model) {
		logger.info("url -> signInAction");
		
		service_login.signInAction(req, model);
		
		return "mainweb/home";
	}
	
	//회원 예약 페이지
	@RequestMapping("/custBooking")
	   public String custBooking(HttpServletRequest req, Model model) {
	      logger.info("url -> custBooking");
	      
	      return "mainweb/custBooking";
	}	
	
	//회원 마이페이지
	@RequestMapping("/mypage")
	public String mypage(HttpServletRequest req, Model model) {
		logger.info("url -> mypage");
		
		return "mainweb/mypage";
	}
	//회원 예약내역 확인
	@RequestMapping("/showBookingDetail")
	public String showBookingDetail(HttpServletRequest req, Model model) {
		logger.info("url -> showBookingDetail");
		
		return "mainweb/showBookingDetail";
	}
	
	//로그아웃 - 수정예정
	@RequestMapping("/logout")
	public String logout(HttpServletRequest req) {
		logger.info("url -> logout");
		req.getSession().invalidate();
		
		
		return "mainweb/home";
	}
	
	//이메일 링크 체크시 홈화면으로 return -> service추가예정
	@RequestMapping("/emailChk")
	public String emailChk(HttpServletRequest req, Model model) {
		logger.info("url -> emailChk");
		
		return "mainweb/home";
	}

}
