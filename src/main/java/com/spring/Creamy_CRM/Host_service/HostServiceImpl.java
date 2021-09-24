package com.spring.Creamy_CRM.Host_service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

@Service
public class HostServiceImpl implements HostService {

	@Override
	public void setWorkTime(HttpServletRequest req, Model model) {
		
		String[] day = req.getParameterValues("day");
		String[] open = req.getParameterValues("open");
		String[] close = req.getParameterValues("close");
		
		System.out.println(day.length);
		System.out.println(open.length);
		System.out.println(close.length);
		
		for (int i = 0; i < day.length; i++) {
			System.out.println(day[i] + " "+ open[i] + " " + close[i]);
		}
		
	}
	
}
