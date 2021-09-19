/*
 * CRM - 상품 페이지 controller
 * 
*/
package com.spring.Creamy_CRM.Host_controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProductController {
	private static final Logger logger = LoggerFactory.getLogger(ProductController.class);

	
	//상품
	@RequestMapping("/host/product")
	public String product(HttpServletRequest req, Model model) {
		logger.info("url -> product");
		
		return "host/product/product";
	}
	
	//상품 추가
		@RequestMapping("/host/addProduct")
		public String addProduct(HttpServletRequest req, Model model) {
			logger.info("url -> addProduct");
			
			return "host/product/addProduct";
		}
	
}
