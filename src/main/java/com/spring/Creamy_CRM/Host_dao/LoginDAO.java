/*
 * 작성자 : 정지은
 * 작성일 : 2021.09.15
 * 로그인 관련 dao interface
 * 
*/
package com.spring.Creamy_CRM.Host_dao;

import java.util.Map;

import com.spring.Creamy_CRM.VO.userVO;

public interface LoginDAO {
	
	//회원상세정보 
	public Map<String, Object> selectUser(String id);
	
	//이메일인증테이블 insert
	public int insertAuth(Map<String,String> map);
	
	//우편번호 조회 
	public int getZipcodeCount(Map<String,String> map);
	
	//우편번호 insert
	public int insertZipcode(Map<String,String> map);
	
	//회원가입
	public int insertUserinfo(userVO vo);
	
	//로그인 체크
	public int confirmIdPwd(Map<String,String> map);

	//메일전송
	public void sendMail(String email, String key);
	
}




