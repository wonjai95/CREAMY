/*
 * 작성자 : 정지은
 * 작성일 : 2021.09.15
 * 후기 controller
 * 
*/
package com.spring.Creamy_CRM.Host_controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.Creamy_CRM.Host_service.LoginService;
import com.spring.Creamy_CRM.Host_service.LoginServiceImpl;

@Controller
public class ReviewController {
	
	private static final Logger logger = LoggerFactory.getLogger(ReviewController.class);


	@RequestMapping("/host/review")
	public String review(HttpServletRequest req, Model model) {
		logger.info("url -> review");
		
		return "host/review/userReview_main";
	}


}
