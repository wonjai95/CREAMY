/*
 * 작성자 : 
 * 작성일 : 
 * 상품 관련 service
 * 
*/
package com.spring.Creamy_CRM.Host_service;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.Creamy_CRM.VO.ProductVO;

@Service
public class ProductServiceImpl implements ProductService {

	@Override
	public void addProductAction(MultipartHttpServletRequest req, Model model) {
		ProductVO vo = new ProductVO();
		MultipartFile file = req.getFile("product_img");
		if(file.getOriginalFilename().equals("") || file.getOriginalFilename() == null) {
			vo.setProduct_img("null");
		}else {
			String saveDir = req.getSession().getServletContext().getRealPath("/resources/images/productImage/");
			// ↓ 경로조심 자신 프로젝트 경로
			String realDir = "C:\\Dev88\\workspace\\Creamy_CRM_git_final\\src\\main\\webapp\\resources\\images\\productImage\\";
			try {
				file.transferTo(new File(saveDir + file.getOriginalFilename()));
				FileInputStream fis = new FileInputStream(saveDir + file.getOriginalFilename());
				FileOutputStream fos = new FileOutputStream(realDir + file.getOriginalFilename());
				
				int i = 0;
				while((i = fis.read()) != -1) {
					fos.write(i);
				}
				fis.close();
				fos.close();
			} catch (IOException e) {
				e.printStackTrace();
				System.out.println(e.getMessage());
			}
		}
		
		String product_name = req.getParameter("product_name");
		String sale_type = req.getParameter("sale_type");
		String product_price = req.getParameter("product_price");
		String product_rentalPeriod = req.getParameter("product_rentalPeriod");
		String product_img = file.getOriginalFilename();
		String product_status = req.getParameter("product_status");
		String product_content = req.getParameter("product_content");
		String product_group_code = req.getParameter("product_group_code");
		
		System.out.println(product_name);
		System.out.println(sale_type);
		System.out.println(product_price);
		System.out.println(product_rentalPeriod);
		System.out.println(product_img);
		System.out.println(product_status);
		System.out.println(product_content);
		System.out.println(product_group_code);
	}
	
}
