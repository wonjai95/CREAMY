/*
 * CRM - 회계 페이지 controller
 * 
*/
package com.spring.Creamy_CRM.Host_controller;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.Creamy_CRM.Host_dao.AccountDAOImpl;
import com.spring.Creamy_CRM.Host_service.AccountServiceImpl;
import com.spring.Creamy_CRM.VO.AccountVO;

@Controller
public class AccountController { 
	
	private static final Logger logger = LoggerFactory.getLogger(AccountController.class);
	
	@Autowired
	AccountServiceImpl service;
	
	@Autowired
	AccountDAOImpl dao;
	
	@RequestMapping("/host/Accounting")
	public String Accounting(HttpServletRequest req, Model model) {
		logger.info("url -> Accounting");
	  
		return "host/accounting/Accounting";
	}
	   
	@RequestMapping("/host/SGA_expenses")
	public String SGA_expenses(HttpServletRequest req, Model model) {
		logger.info("url -> SGA_expenses");
	  
		service.slipList(req, model);
		return "host/accounting/SGA_expenses";
	}
	
	// 판관비 등록 처리
	@RequestMapping("/host/insertSlip")
	public @ResponseBody String insertSGA_expenses(HttpServletRequest req, Model model) {
		logger.info("url -> insertSlip");
	  
		String strDate = req.getParameter("slip_regDate");
		Date slip_regDate = Date.valueOf(strDate);
		String slip_type = req.getParameter("slip_type");
		int slip_money = Integer.parseInt(req.getParameter("slip_money"));
		String slip_memo = req.getParameter("slip_memo");
		String host_code = (String) req.getSession().getAttribute("code");
		
		AccountVO vo = new AccountVO();
		vo.setHost_code(host_code);
		vo.setSlip_regDate(slip_regDate);
		vo.setSlip_type(slip_type);
		vo.setSlip_money(slip_money);
		vo.setSlip_memo(slip_memo);
		
		int insertCnt = dao.insertSlip(vo);
		System.out.println("insertCnt : " + insertCnt);
		
		return Integer.toString(insertCnt);
		
	}

}
