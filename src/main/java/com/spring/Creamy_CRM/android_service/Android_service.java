/*
 * 작성자 : 정지은
 * 작성일 : 2021.09.15
 * 안드로이드 처리를 담당할 service interface
 * 나중에 안드로이드 다시 연동할 예정
 * 
*/
package com.spring.Creamy_CRM.android_service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public interface Android_service {

	public Map<String, String> androidlogin(HttpServletRequest req);
	
}
