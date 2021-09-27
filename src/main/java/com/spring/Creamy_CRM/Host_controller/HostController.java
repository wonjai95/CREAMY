package com.spring.Creamy_CRM.Host_controller;


import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.Creamy_CRM.Host_service.HostService;

@Controller
public class HostController {
	private static final Logger logger = LoggerFactory.getLogger(HostController.class);
	
	@Autowired
	private HostService service;
	
	@RequestMapping("/host/hostPage")
	public String mypage(HttpServletRequest req, Model model) {
		logger.info("url -> hostPage");
		service.getHostInfo(req, model);
		return "host/hostPage/hostPage";
	}
	
	//시간설정
	@RequestMapping("/host/setWorkTime")
	public String setWorkTime(HttpServletRequest req, Model model) {
		logger.info("url -> setWorkTime");
		service.setWorkTime(req, model);
		return "host/hostPage/setWorkTime";
	}
	
	//사업자 정보 등록(company)
	@RequestMapping("/host/addCompanyAction")
	public String addCompanyAction(HttpServletRequest req, Model model) {
		logger.info("url -> addCompanyAction");
		service.addCompanyAction(req, model);
		return "host/hostPage/addCompanyAction";
	}
	
	
}
