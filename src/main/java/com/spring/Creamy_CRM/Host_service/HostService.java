package com.spring.Creamy_CRM.Host_service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface HostService {
	static final int WEEK = 7;
	//마이페이지 정보
	void getHostInfo(HttpServletRequest req, Model model);
	//시간설정
	void setWorkTime(HttpServletRequest req, Model model);
}
