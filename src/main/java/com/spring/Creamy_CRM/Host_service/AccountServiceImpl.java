/*
 * 작성자 : 
 * 작성일 : 
 * 회계 관련 service
 * 
*/
package com.spring.Creamy_CRM.Host_service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.spring.Creamy_CRM.Host_dao.AccountDAOImpl;
import com.spring.Creamy_CRM.VO.AccountVO;

@Service
public class AccountServiceImpl implements AccountService {
	
	@Autowired
	AccountDAOImpl dao;

	// 판관비 목록
	@Override
	public void slipList(HttpServletRequest req, Model model) {
		String host_code = (String) req.getSession().getAttribute("code");
		
		List<AccountVO> dtos = dao.getSlipList(host_code);
		
		model.addAttribute("dtos", dtos);
	}


}
