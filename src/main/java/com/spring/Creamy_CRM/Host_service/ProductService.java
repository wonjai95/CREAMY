/*
 * 작성자 : 
 * 작성일 : 
 * 상품 관련 service interface
 * 
*/
package com.spring.Creamy_CRM.Host_service;

import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartHttpServletRequest;

public interface ProductService {

	void addProductAction(MultipartHttpServletRequest req, Model model);
}
