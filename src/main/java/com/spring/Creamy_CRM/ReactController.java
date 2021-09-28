package com.spring.Creamy_CRM;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ReactController {
	
	@RequestMapping("react/check")
	public String check(HttpServletRequest req) {
		System.out.println("url -> react_check");
		
		System.out.println(req.getParameter("board_no"));
		
		return "react/reactCheck";
	}

}