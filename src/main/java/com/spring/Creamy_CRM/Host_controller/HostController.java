package com.spring.Creamy_CRM.Host_controller;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

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
	public String mypage(Model model) {
		logger.info("url -> hostPage");
		
		String[] days = {
			"월요일","화요일","수요일","목요일","금요일","토요일","일요일"
		};
		List<String> dayList = new ArrayList<String>();
		for (int i = 0; i < days.length; i++) {
			dayList.add(days[i]);
		}
		model.addAttribute("dayList", dayList);
		
		return "host/hostPage/hostPage";
	}
	
	@RequestMapping("/host/setWorkTime")
	public String setWorkTime(HttpServletRequest req, Model model) {
		logger.info("url -> setWorkTime");
		service.setWorkTime(req, model);
		return "host/hostPage/setWorkTime";
	}
}
