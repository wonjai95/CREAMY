package com.spring.Creamy_CRM.Host_controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HostController {
	private static final Logger logger = LoggerFactory.getLogger(HostController.class);
	
	@RequestMapping("/host/hostPage")
	public String mypage() {
		logger.info("url -> hostPage");
		return "host/hostPage/hostPage";
	}
}
