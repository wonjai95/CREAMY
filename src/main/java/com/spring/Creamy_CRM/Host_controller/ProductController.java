/*
 * CRM - 상품 페이지 controller
 * 
 * 
*/
package com.spring.Creamy_CRM.Host_controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.Creamy_CRM.Host_service.CRMuserService;
import com.spring.Creamy_CRM.Host_service.LoginServiceImpl;
import com.spring.Creamy_CRM.Host_service.ProductService;
import com.spring.Creamy_CRM.VO.userVO;

@Controller
public class ProductController {
	private static final Logger logger = LoggerFactory.getLogger(ProductController.class);

	@Autowired
	ProductService service;
	
	@Autowired
	CRMuserService service_user;
	
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
	
	// 상품상세(수정)
	@RequestMapping("/host/detailProduct")
	public String detailProduct(HttpServletRequest req, Model model) {
		logger.info("url -> detailProduct");
		service.detailProduct(req, model);
		return "host/product/detailProduct";
	}
	
	// 상품수정
	@RequestMapping("/host/modifyProductAction")
	public String modifyProductAction(MultipartHttpServletRequest req, Model model) {
		logger.info("url -> modifyProductAction");
		service.modifyProductAction(req, model);
		return "host/product/modifyProductAction";
	}
	
	// 상품삭제
	@RequestMapping("/host/deleteProductAction")
	public String deleteProductAction(HttpServletRequest req, Model model) {
		logger.info("url -> deleteProductAction");
		service.deleteProductAction(req, model);
		return "host/product/deleteProductAction";
	}

	//상품 그룹 페이지요청
	@RequestMapping("/host/addProductGroup")
	public String addProductGroup(HttpServletRequest req, Model model) {
		logger.info("url -> addProductGroup");
		return "host/product/addProductGroup";
	}
	
	// 상품 그룹 페이지요청
	@RequestMapping("/host/addProductGroupAction")
	public String addProductGroupAction(HttpServletRequest req, Model model) {
		logger.info("url -> addProductGroupAction");
		service.addProductGroupAction(req, model);
		return "host/product/addProductGroupAction";
	}
	
	// 상품 그룹 수정 페이지요청
	@RequestMapping("/host/detailProductGroup")
	public String detailProductGroup(HttpServletRequest req, Model model) {
		logger.info("url -> detailProductGroup");
		service.detailProductGroup(req, model);
		return "host/product/detailProductGroup";
	}
	
	// 상품 그룹 수정
	@RequestMapping("/host/modifyProductGroupAction")
	public String modifyProductGroupAction(HttpServletRequest req, Model model) {
		logger.info("url -> modifyProductGroupAction");
		service.modifyProductGroupAction(req, model);
		return "host/product/modifyProductGroupAction";
	}

	// 상품 그룹 삭제
	@RequestMapping("/host/deleteProductGroupAction")
	public String deleteProductGroupAction(HttpServletRequest req, Model model) {
		logger.info("url -> deleteProductGroupAction");
		service.deleteProductGroupAction(req, model);
		return "host/product/deleteProductGroupAction";
	}

	//재고 추가 페이지요청
	@RequestMapping("/host/addStock")
	public String addStock(HttpServletRequest req, Model model) {
		logger.info("url -> addStock");

		return "host/product/addStock";
	}
	
	// 재고 추가
	@RequestMapping("/host/addStockAction")
	public String addStockAction(HttpServletRequest req, Model model) {
		logger.info("url -> addStockAction");
		service.addStockAction(req, model);
		return "host/product/addStockAction";
	}
	// 재고 상세(수정)
	@RequestMapping("/host/detailStock")
	public String detailStock(HttpServletRequest req, Model model) {
		logger.info("url -> detailStock");
		service.detailStock(req, model);
		return "host/product/detailStock";
	}
	
	// 재고 수정
	@RequestMapping("/host/modifyStockAction")
	public String modifyStockAction(HttpServletRequest req, Model model) {
		logger.info("url -> modifyStockAction");
		service.modifyStockAction(req, model);
		return "host/product/modifyStockAction";
	}
	
	// 재고 삭제
	@RequestMapping("/host/deleteStockAction")
	public String deleteStockAction(HttpServletRequest req, Model model) {
		logger.info("url -> deleteStockAction");
		service.deleteStockAction(req, model);
		return "host/product/deleteStockAction";
	}
	
	//거래처 추가 페이지요청
	@RequestMapping("/host/addTrade")
	public String addTrade(HttpServletRequest req, Model model) {
		logger.info("url -> addTrade");
		
		return "host/product/addTrade";
	}
	
	
	// 거래처 추가 페이지요청
	@RequestMapping("/host/addTradeAction")
	public String addTradeAction(HttpServletRequest req, Model model) {
		logger.info("url -> addTradeAction");
		service.addTradeAction(req, model);
		return "host/product/addTradeAction";
	}

	// 거래처 상세(수정)
	@RequestMapping("/host/detailTrade")
	public String detailTrade(HttpServletRequest req, Model model) {
		logger.info("url -> detailTrade");
		service.detailTrade(req, model);
		return "host/product/detailTrade";
	}

	// 거래처 수정
	@RequestMapping("/host/modifyTradeAction")
	public String modifyTradeAction(HttpServletRequest req, Model model) {
		logger.info("url -> modifyTradeAction");
		service.modifyTradeAction(req, model);
		return "host/product/modifyTradeAction";
	}

	// 거래처 삭제
	@RequestMapping("/host/deleteTradeAction")
	public String deleteTradeAction(HttpServletRequest req, Model model) {
		logger.info("url -> deleteTradeAction");
		service.deleteTradeAction(req, model);
		return "host/product/deleteTradeAction";
	}
	
	// 판매 페이지
	@RequestMapping("/host/selling")
	public String selling(HttpServletRequest req, Model model) {
		logger.info("url -> selling");
		
		// 회원 정보 출력(이전 페이지에서 클릭한 회원 값 넘기기) 
		service_user.getUserInfo(req, model);
		model.addAttribute("dto", req.getAttribute("dto")); // 회원 정보 넘겨주기

		// 상품 목록 출력  
		service.printProducts(req, model);
		model.addAttribute("dto2", req.getAttribute("dto2")); // 상품 정보 넘겨주기
		
		return "host/product/selling";
	}

}
