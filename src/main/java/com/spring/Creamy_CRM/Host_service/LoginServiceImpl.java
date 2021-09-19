/*
 * 작성자 : 정지은
 * 작성일 : 2021.09.15
 * 로그인 관련 service
 * 
*/
package com.spring.Creamy_CRM.Host_service;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.spring.Creamy_CRM.Host_dao.LoginDAOImpl;
import com.spring.Creamy_CRM.VO.userVO;
import com.spring.Creamy_CRM.util.EmailChkHandler;

@Service
public class LoginServiceImpl implements LoginService {

	@Autowired
	LoginDAOImpl dao_login;
	
	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	
	
	@Override
	public void signInAction(HttpServletRequest req, Model model) {
		String id = req.getParameter("sign_id");
		String pw = req.getParameter("sign_PWD");
		String name = req.getParameter("sign_name");
		
		int year = Integer.parseInt(req.getParameter("sign_birth1"));
		
		int age = 2021 - year;
		
		String strDate = req.getParameter("sign_birth1")+"-"+req.getParameter("sign_birth2")+"-"+req.getParameter("sign_birth3");
	    java.sql.Date date = java.sql.Date.valueOf(strDate);
	    System.out.println("생일 : "+date);
	    
	    String email = req.getParameter("sign_Email1")+"@"+req.getParameter("sign_Email2");
	    String phone = req.getParameter("sign_Phone1")+"-"+req.getParameter("sign_Phone2")+"-"+req.getParameter("sign_Phone3");
	    String zipcode = req.getParameter("sign_zipcode");
	    String sido = req.getParameter("sign_sido");
	    String gugun = req.getParameter("sign_gugun");
	    String address= req.getParameter("sign_address");
	    
		//비밀번호 암호화
		String BcryptPw = passwordEncoder.encode(pw);
		
		//이메일 인증 테이블 insert
		Map<String, String> map = new HashMap<String, String>();
		map.put("id",id);
		map.put("pw", BcryptPw);
		
		int cnt = dao_login.insertAuth(map);
		System.out.println("이메일 인증 테이블 insert : "+cnt);
		
		//우편번호 insert
		Map<String, String> map_zipcode = new HashMap<String, String>();
		map_zipcode.put("zipcode", zipcode);
		map_zipcode.put("sido", sido);
		map_zipcode.put("gugun", gugun);
		
		//이미 존재하는 우편번호인지 조회
		int dupcnt = dao_login.getZipcodeCount(map_zipcode);
		System.out.println("우편번호 cnt : "+dupcnt);
		
		//우편번호가 존재하지 않으면 insert
		if(dupcnt == 0) {
			int insertCnt = dao_login.insertZipcode(map_zipcode);
		}
		
		//회원 테이블 insert
		userVO vo = new userVO();
		vo.setUser_id(id);
		vo.setUser_password(BcryptPw);
		vo.setUser_name(name);
		vo.setUser_age(age);
		vo.setUser_birth(date);
		vo.setUser_email(email);
		vo.setPhoneNumber(phone);
		vo.setZipcode(zipcode);
		vo.setUser_address(address);
		
		int userinsertCnt = dao_login.insertUserinfo(vo);
		System.out.println("회원가입 성공? : "+userinsertCnt);
		
		if(userinsertCnt > 0) {
			String key = EmailChkHandler.getKey();
			
			dao_login.sendMail(email, key);
		}
		
		
	}

}
