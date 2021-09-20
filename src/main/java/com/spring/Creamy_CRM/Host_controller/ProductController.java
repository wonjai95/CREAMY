/*
 * CRM - 상품 페이지 controller
 * 
*/
package com.spring.Creamy_CRM.Host_controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.Creamy_CRM.Host_service.ProductService;

@Controller
public class ProductController {
	private static final Logger logger = LoggerFactory.getLogger(ProductController.class);

	@Autowired
	ProductService service;
	
	// 상품관련 페이지 요청
	@RequestMapping("/host/product")
	public String user5(HttpServletRequest req, Model model) {
		logger.info("url -> product");
		return "host/product/product";
	}

	// 상품등록 페이지요청
	@RequestMapping("/host/addProduct")
	public String addProduct(HttpServletRequest req, Model model) {
		logger.info("url -> addProduct");
		return "host/product/addProduct";
	}
	
	// 상품등록
	@RequestMapping("/host/addProductAction")
	public String addProductAction(MultipartHttpServletRequest req, Model model) {
		logger.info("url -> addProductAction");
		service.addProductAction(req, model);
		return "host/product/addProductAction";
	}

	//상품 그룹 페이지요청
	@RequestMapping("/host/addProductGroup")
	public String addProductGroup(HttpServletRequest req, Model model) {
		logger.info("url -> addProductGroup");
		return "host/product/addProductGroup";
	}

	//재고 추가 페이지요청
	@RequestMapping("/host/addStock")
	public String addStock(HttpServletRequest req, Model model) {
		logger.info("url -> addStock");

		return "host/product/addStock";
	}
	
	//거래처 추가 페이지요청
	@RequestMapping("/host/addTrade")
	public String addTrade(HttpServletRequest req, Model model) {
		logger.info("url -> addTrade");
		
		return "host/product/addTrade";
	}

}
