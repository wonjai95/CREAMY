/*
 * 작성자 : 장현정
 * 작성일 : 2021-09-20 ~ 2021-09-20
 * 상품 관련 service
 * 
*/
package com.spring.Creamy_CRM.Host_service;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.Creamy_CRM.Host_dao.ProductDAOImpl;
import com.spring.Creamy_CRM.VO.ProductGroupVO;
import com.spring.Creamy_CRM.VO.ProductVO;
import com.spring.Creamy_CRM.VO.SaleVO;
import com.spring.Creamy_CRM.VO.StockVO;
import com.spring.Creamy_CRM.VO.TradeVO;
import com.spring.Creamy_CRM.util.Page;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	ProductDAOImpl dao;
	
	// 상품 목록 출력
	@Override
	public void printProducts(HttpServletRequest req, Model model) {
		System.out.println("service ==> printProducts");
		List<ProductVO> list = new ArrayList<ProductVO>();
		
		String product_code = req.getParameter("product_code");
		System.out.println("product_code : " + product_code);
		
		list = dao.printProducts();
		
		System.out.println("dto2 : " + list);
		req.setAttribute("dto2", list); // 상품 정보 넘겨주기
		
	}

	// 판매 내역 출력
	@Override
	public void getSaleInfo(HttpServletRequest req, Model model) {
		System.out.println("service ==> getSaleInfo");
		List<SaleVO> list = new ArrayList<SaleVO>();
		
		String user_code = req.getParameter("user_code");
		System.out.println("user_code : " + user_code);
		
		list = dao.getSaleInfo(user_code);
		
		System.out.println("dto : " + list);
		req.setAttribute("dto", list); // 상품 정보 넘겨주기
		
	}
	
	
	
	
	// 상품
		@Override
		public void product(HttpServletRequest req, Model model) {

			Map<String, Object> map = null;
			List<ProductGroupVO> productGroupList = null;
			List<ProductVO> productList = null;
			List<TradeVO> tradeList = null;
			List<StockVO> stockList = null;
			Page productGroupPage = new Page();
			Page productPage = new Page();
			Page tradePage = new Page();
			Page stockPage = new Page();

			/**********/
			/*
			 * String prac = req.getParameter("product_typeOfSales"); //String prac =
			 * "엘리니아 헤어샵"; System.out.println("prac : " + prac); Map<String, Object> map2 =
			 * new HashMap<String, Object>(); map2.put("prac", prac);
			 */
			/**********/

			// 상품그룹 페이지
			productGroupPage.setCnt(dao.productGroupCnt());
			// productGroupPage.setCnt(dao.productGroupCnt(map2));
			productGroupPage.setPageSize(10);
			productGroupPage.setPageBlock(5);
			productGroupPage.setCurrentPage(req.getParameter("pageNum"));

			if (productGroupPage.getCnt() > 0) {
				map = new HashMap<String, Object>();
				map.put("start", productGroupPage.getStart());
				map.put("end", productGroupPage.getEnd());
				productGroupList = dao.selectProductGroupList(map);
			}

			// 상품 페이지
			productPage.setCnt(dao.productCnt());
			productPage.setPageSize(10);
			productPage.setPageBlock(5);
			productPage.setCurrentPage(req.getParameter("pageNum"));

			if (productPage.getCnt() > 0) {
				map = new HashMap<String, Object>();
				map.put("start", productPage.getStart());
				map.put("end", productPage.getEnd());
				productList = dao.selectProductList(map);
			}

			// 거래처 페이지
			tradePage.setCnt(dao.tradeCnt());
			tradePage.setPageSize(10);
			tradePage.setPageBlock(5);
			tradePage.setCurrentPage(req.getParameter("pageNum"));

			if (tradePage.getCnt() > 0) {
				map = new HashMap<String, Object>();
				map.put("start", tradePage.getStart());
				map.put("end", tradePage.getEnd());
				tradeList = dao.selectTradeList(map);
			}
			
			
			// 거래처 페이지
			stockPage.setCnt(dao.stockCnt());
			stockPage.setPageSize(10);
			stockPage.setPageBlock(5);
			stockPage.setCurrentPage(req.getParameter("pageNum"));
			
			if (stockPage.getCnt() > 0) {
				map = new HashMap<String, Object>();
				map.put("start", stockPage.getStart());
				map.put("end", stockPage.getEnd());
				stockList = dao.selectStockList(map);
			}
			model.addAttribute("stockList", stockList);
			model.addAttribute("tradeList", tradeList);
			model.addAttribute("productGroupList", productGroupList);
			/*
			model.addAttribute("productGroupPageCnt", productGroupPage.getCnt());
			model.addAttribute("productGroupPageNumber", productGroupPage.getNumber());
			model.addAttribute("productGroupPageStartPage", productGroupPage.getStartPage());
			model.addAttribute("productGroupPageEndPage", productGroupPage.getEndPage());
			model.addAttribute("productGroupPagePageBlock", productGroupPage.getPageBlock());
			model.addAttribute("productGroupPageCurrentPage", productGroupPage.getCurrentPage());
			model.addAttribute("productGroupPagePageCount", productGroupPage.getPageCount());
			 */
			model.addAttribute("productList", productList);
			/*
			model.addAttribute("productPageCnt", productPage.getCnt());
			model.addAttribute("productPageNumber", productPage.getNumber());
			model.addAttribute("productPageStratPage", productPage.getStartPage());
			model.addAttribute("productPageEndPage", productPage.getEndPage());
			model.addAttribute("productPagePageBlock", productPage.getPageBlock());
			model.addAttribute("productPagePageCurrentPage", productPage.getCurrentPage());
			model.addAttribute("productPagePageCount", productPage.getPageCount());
			*/
		}

		// 상품그룹 등록
		@Override
		public void addProductGroupAction(HttpServletRequest req, Model model) {
			String product_group_name = req.getParameter("product_group_name");
			int selectCnt = dao.chkProductGroupName(product_group_name);
			ProductGroupVO vo = new ProductGroupVO();
			vo.setProduct_group_name(product_group_name);
			vo.setPg_indate(new Date(System.currentTimeMillis()));
			int insertCnt = 0;
			if (selectCnt != 1) {
				insertCnt = dao.insertProductGroup(vo);
				model.addAttribute("insertCnt", insertCnt);
			}
			model.addAttribute("selectCnt", selectCnt);
		}

		// 상품그룹 상세(수정)
		@Override
		public void detailProductGroup(HttpServletRequest req, Model model) {
			String product_group_code = req.getParameter("product_group_code");
			ProductGroupVO vo = dao.getProductGroup(product_group_code);
			model.addAttribute("vo", vo);
		}

		// 상품그룹 수정
		@Override
		public void modifyProductGroupAction(HttpServletRequest req, Model model) {
			String product_group_code = req.getParameter("product_group_code");
			String product_group_name = req.getParameter("product_group_name");

			ProductGroupVO vo = dao.getProductGroup(product_group_code);
			int selectCnt = 0;
			if(!product_group_name.equals(vo.getProduct_group_name())) {
				selectCnt = dao.chkProductGroupName(product_group_name);
			}

			if (selectCnt != 1 || product_group_name.equals(vo.getProduct_group_name())) {
				Map<String, Object> map = new HashMap<String, Object>();
				map.put("product_group_code", product_group_code);
				map.put("product_group_name", product_group_name);
				int updateCnt = dao.updateProductGroup(map);
				model.addAttribute("updateCnt", updateCnt);
			}
			model.addAttribute("selectCnt", selectCnt);
		}

		// 상품 그룹 삭제
		@Override
		public void deleteProductGroupAction(HttpServletRequest req, Model model) {
			String product_group_code = req.getParameter("product_group_code");
			ProductGroupVO vo = dao.getProductGroup(product_group_code);
			if (vo != null) {
				int deleteCnt = dao.deleteProductGroup(product_group_code);
				model.addAttribute("deleteCnt", deleteCnt);
			}
			model.addAttribute("vo", vo);
		}

		// 상품 등록 페이지 요청 (상품그룹 데이터)
		@Override
		public void addProduct(HttpServletRequest req, Model model) {
			List<ProductGroupVO> list = dao.getProductGroupList();
			model.addAttribute("list", list);
		}

		// 상품등록
		@Override
		public void addProductAction(MultipartHttpServletRequest req, Model model) {
			String product_name = req.getParameter("product_name");
			String product_typeOfSales = req.getParameter("product_typeOfSales");
			String product_price = req.getParameter("product_price");
			String product_rentalPeriod = req.getParameter("product_rentalPeriod");
			String product_status = req.getParameter("product_status");
			String product_content = req.getParameter("product_content");
			String product_group_code = req.getParameter("product_group_code");
			MultipartFile file = req.getFile("product_img");
			ProductVO vo = new ProductVO();

			if (file.getOriginalFilename().equals("") || file.getOriginalFilename() == null) {
				vo.setProduct_img("null");
			} else {
				String saveDir = req.getSession().getServletContext().getRealPath("/resources/images/productImage/");
				// ↓ 경로조심 자신 프로젝트 경로
				String realDir = "D:\\Dev88\\workspace\\Creamy_CRM\\src\\main\\webapp\\resources\\images\\productImage\\";
				try {
					file.transferTo(new File(saveDir + file.getOriginalFilename()));
					FileInputStream fis = new FileInputStream(saveDir + file.getOriginalFilename());
					FileOutputStream fos = new FileOutputStream(realDir + file.getOriginalFilename());

					int i = 0;
					while ((i = fis.read()) != -1) {
						fos.write(i);
					}
					vo.setProduct_img(file.getOriginalFilename());
					fis.close();
					fos.close();
				} catch (IOException e) {
					e.printStackTrace();
					System.out.println(e.getMessage());
				}
			}

			if (product_typeOfSales.equals("서비스")) {
				vo.setProduct_rentalPeriod(0);
			} else {
				vo.setProduct_rentalPeriod(Integer.parseInt(product_rentalPeriod));
			}

			vo.setProduct_name(product_name);
			vo.setProduct_typeOfSales(product_typeOfSales);
			vo.setProduct_price(Integer.parseInt(product_price));
			vo.setProduct_indate(new Date(System.currentTimeMillis()));
			vo.setProduct_status(product_status);
			vo.setProduct_content(product_content);
			vo.setProduct_group_code(product_group_code);
			
			int selectCnt = dao.chkProductName(product_name);
			if(selectCnt != 1) {
				int insertCnt = dao.insertProduct(vo);
				model.addAttribute("insertCnt", insertCnt);
			}
			
			model.addAttribute("selectCnt", selectCnt);
		}

		// 상품상세(수정)
		@Override
		public void detailProduct(HttpServletRequest req, Model model) {
			String product_code = req.getParameter("product_code");
			List<ProductGroupVO> list = dao.getProductGroupList();
			ProductVO vo = dao.getProduct(product_code);
			model.addAttribute("list", list);
			model.addAttribute("vo", vo);
		}

		// 상품수정
		@Override
		public void modifyProductAction(MultipartHttpServletRequest req, Model model) {
			String product_code = req.getParameter("product_code");
			String product_name = req.getParameter("product_name");
			String product_typeOfSales = req.getParameter("product_typeOfSales");
			String product_price = req.getParameter("product_price");
			String product_rentalPeriod = req.getParameter("product_rentalPeriod");
			String product_status = req.getParameter("product_status");
			String product_content = req.getParameter("product_content");
			String product_group_code = req.getParameter("product_group_code");
			MultipartFile file = req.getFile("product_img");
			ProductVO vo = new ProductVO();

			if (file.getOriginalFilename().equals("") || file.getOriginalFilename() == null) {
				String hiddenImg = req.getParameter("hiddenImg");
				vo.setProduct_img(hiddenImg);
			} else {
				String saveDir = req.getSession().getServletContext().getRealPath("/resources/images/productImage/");
				// ↓ 경로조심 자신 프로젝트 경로
				String realDir = "D:\\Dev88\\workspace\\Creamy_CRM\\src\\main\\webapp\\resources\\images\\productImage\\";
				try {
					file.transferTo(new File(saveDir + file.getOriginalFilename()));
					FileInputStream fis = new FileInputStream(saveDir + file.getOriginalFilename());
					FileOutputStream fos = new FileOutputStream(realDir + file.getOriginalFilename());

					int i = 0;
					while ((i = fis.read()) != -1) {
						fos.write(i);
					}
					vo.setProduct_img(file.getOriginalFilename());
					fis.close();
					fos.close();
				} catch (IOException e) {
					e.printStackTrace();
					System.out.println(e.getMessage());
				}
			}

			if (product_typeOfSales.equals("서비스")) {
				vo.setProduct_rentalPeriod(0);
			} else {
				vo.setProduct_rentalPeriod(Integer.parseInt(product_rentalPeriod));
			}

			vo.setProduct_code(product_code);
			vo.setProduct_name(product_name);
			vo.setProduct_typeOfSales(product_typeOfSales);
			vo.setProduct_price(Integer.parseInt(product_price));
			vo.setProduct_indate(new Date(System.currentTimeMillis()));
			vo.setProduct_status(product_status);
			vo.setProduct_content(product_content);
			vo.setProduct_group_code(product_group_code);

			int selectCnt = 0;
			ProductVO getVo = dao.getProduct(product_code);
			if(!product_name.equals(getVo.getProduct_name())) {
				selectCnt = dao.chkProductName(product_name);
			}
			
			if(selectCnt != 1 || product_name.equals(getVo.getProduct_name())) {
				int updateCnt = dao.updateProduct(vo);
				model.addAttribute("updateCnt", updateCnt);
			}
			model.addAttribute("selectCnt", selectCnt);

		}

		// 상품 삭제
		@Override
		public void deleteProductAction(HttpServletRequest req, Model model) {
			String product_code = req.getParameter("product_code");
			ProductVO vo = dao.getProduct(product_code);
			if (vo != null) {
				int deleteCnt = dao.deleteProduct(product_code);
				model.addAttribute("deleteCnt", deleteCnt);
			}
			model.addAttribute("vo", vo);
		}

		// 거래처 등록
		@Override
		public void addTradeAction(HttpServletRequest req, Model model) {
			TradeVO vo = new TradeVO();
			String trade_name = req.getParameter("trade_name");
			vo.setTrade_name(trade_name);
			vo.setTrade_indate(new Date(System.currentTimeMillis()));

			int selectCnt = dao.chkTradeName(trade_name);

			if (selectCnt != 1) {
				int insertCnt = dao.insertTrade(vo);
				model.addAttribute("insertCnt", insertCnt);
			}
			model.addAttribute("selectCnt", selectCnt);
		}

		//거래처 상세 (수정)
		@Override
		public void detailTrade(HttpServletRequest req, Model model) {
			String trade_code = req.getParameter("trade_code");
			TradeVO vo = dao.getTrade(trade_code);
			model.addAttribute("vo",vo);
		}
		
		//거래처 수정
		@Override
		public void modifyTradeAction(HttpServletRequest req, Model model) {
			String trade_code = req.getParameter("trade_code");
			String trade_name = req.getParameter("trade_name");
			TradeVO vo = dao.getTrade(trade_code);
			int selectCnt = 0;
			if(!trade_name.equals(vo.getTrade_name())) {
				selectCnt = dao.chkTradeName(trade_name);
			}
			
			if (selectCnt != 1 || trade_name.equals(vo.getTrade_name())) {
				Map<String, Object> map = new HashMap<String, Object>();
				map.put("trade_code", trade_code);
				map.put("trade_name", trade_name);
				int updateCnt = dao.updateTrade(map);
				model.addAttribute("updateCnt", updateCnt);
			}
			
			model.addAttribute("selectCnt", selectCnt);
		}

		//거래처 삭제
		@Override
		public void deleteTradeAction(HttpServletRequest req, Model model) {
			String trade_code = req.getParameter("trade_code");
			TradeVO vo = dao.getTrade(trade_code);
			if (vo != null) {
				int deleteCnt = dao.deleteTrade(trade_code);
				model.addAttribute("deleteCnt", deleteCnt);
			}
			model.addAttribute("vo", vo);
		}

		//재고 페이지 요청 (거래처 목록)
		@Override
		public void addStock(HttpServletRequest req, Model model) {
			List<TradeVO> list = dao.getTradeList();
			model.addAttribute("list", list);
		}

		//재고 등록
		@Override
		public void addStockAction(HttpServletRequest req, Model model) {
			String stock_name = req.getParameter("stock_name");
			String stock_price = req.getParameter("stock_price");
			String stock_brand = req.getParameter("stock_brand");
			String stock_count = req.getParameter("stock_count");
			String stock_status = req.getParameter("stock_status");
			String trade_code = req.getParameter("trade_code");
			StockVO vo = new StockVO();
			vo.setStock_name(stock_name);
			vo.setStock_price(Integer.parseInt(stock_price));
			vo.setStock_brand(stock_brand);
			vo.setStock_count(Integer.parseInt(stock_count));
			vo.setStock_status(stock_status);
			vo.setTrade_code(trade_code);
			vo.setStock_indate(new Date(System.currentTimeMillis()));

			int selectCnt = dao.chkStockName(stock_name);
			
			if(selectCnt != 1) {
				int insertCnt = dao.insertStock(vo);
				model.addAttribute("insertCnt", insertCnt);
			}
			model.addAttribute("selectCnt", selectCnt);
		}
		
		//재고 상세(수정)
		@Override
		public void detailStock(HttpServletRequest req, Model model) {
			String stock_code = req.getParameter("stock_code");
			StockVO vo = dao.getStock(stock_code);
			List<TradeVO> list = dao.getTradeList();
			model.addAttribute("vo",vo);
			model.addAttribute("list",list);
		}

		//재고 수정
		@Override
		public void modifyStockAction(HttpServletRequest req, Model model) {
			String stock_code = req.getParameter("stock_code");
			String stock_name = req.getParameter("stock_name");
			String stock_price = req.getParameter("stock_price");
			String stock_count = req.getParameter("stock_count");
			String stock_brand = req.getParameter("stock_brand");
			String stock_status = req.getParameter("stock_status");
			String trade_code = req.getParameter("trade_code");
			
			StockVO vo = new StockVO();
			vo.setStock_code(stock_code);
			vo.setStock_name(stock_name);
			vo.setStock_price(Integer.parseInt(stock_price));
			vo.setStock_count(Integer.parseInt(stock_count));
			vo.setStock_brand(stock_brand);
			vo.setStock_status(stock_status);
			vo.setTrade_code(trade_code);
			
			StockVO getVo = dao.getStock(stock_code);
			int selectCnt = 0;
			if(!stock_name.equals(getVo.getStock_name())) {
				selectCnt = dao.chkStockName(stock_name);
			}
			
			if(selectCnt != 1 || stock_name.equals(getVo.getStock_name())) {
				int updateCnt = dao.updateStock(vo);
				model.addAttribute("updateCnt",updateCnt);
			}
			model.addAttribute("selectCnt",selectCnt);
		}
		
		//재고 삭제
		@Override
		public void deleteStockAction(HttpServletRequest req, Model model) {
			String stock_code = req.getParameter("stock_code");
			StockVO vo = dao.getStock(stock_code);
			if(vo != null) {
				int deleteCnt = dao.deleteStock(stock_code);
				model.addAttribute("deleteCnt",deleteCnt);
			}
			model.addAttribute("vo",vo);
		}
	
}
