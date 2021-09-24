package com.spring.Creamy_CRM.Host_service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

public interface HostService {

	void setWorkTime(HttpServletRequest req, Model model);
}
