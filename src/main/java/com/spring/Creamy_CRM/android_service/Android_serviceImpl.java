/*
 * 작성자 : 정지은
 * 작성일 : 2021.09.15
 * 안드로이드 처리를 담당할 service
 * 나중에 안드로이드 다시 연동할 예정
 * 
*/
package com.spring.Creamy_CRM.android_service;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.Creamy_CRM.Host_dao.LoginDAOImpl;

@Service
public class Android_serviceImpl implements Android_service{

	@Autowired
	LoginDAOImpl dao_login;
	
	@Override
	public Map<String, String> androidlogin(HttpServletRequest req) {
		
		// 안드로이드에서 전달한 값
		String id = req.getParameter("id");
		String pwd = req.getParameter("pwd");
		
		Map<String, String> in = new HashMap<String, String>();
		in.put("id", id);
		in.put("pwd", pwd);
		
		// 웹에서 안드로이드로 전달할 값
		Map<String, String> out = new HashMap<String, String>();
		
		int map = dao_login.confirmIdPwd(in);
		
		if(map != 0) {
			System.out.println("로그인 성공");
			out.put("member_id", id);
		}else {
			System.out.println("로그인 실패");
			out.put("member_id", null);
		}
		
		return out;
	}

}
