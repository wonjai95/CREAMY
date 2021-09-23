/*
 * 작성자 : 장현정
 * 작성일 : 2021-09-20 ~ 2021-09-20
 * 상품 관련 dao
 * 
*/
package com.spring.Creamy_CRM.Host_dao;

import java.util.List;
import java.util.Map;

import com.spring.Creamy_CRM.VO.ProductGroupVO;
import com.spring.Creamy_CRM.VO.ProductVO;
import com.spring.Creamy_CRM.VO.SaleVO;
import com.spring.Creamy_CRM.VO.StockVO;
import com.spring.Creamy_CRM.VO.TradeVO;

public interface ProductDAO {

	// 상품 정보 출력
	public List<ProductVO> printProducts();
	// 판매 내역 출력
	public List<SaleVO> getSaleInfo(String user_code);
	
	
	//그룹 개수
		int productGroupCnt();
		//그룹 리스트(페이징)
		List<ProductGroupVO> selectProductGroupList(Map<String, Object> map);
		//상품 그룹 정보
		ProductGroupVO getProductGroup(String product_group_code);
		//상품 그룹 수정
		int updateProductGroup(Map<String, Object> map);
		//상품 그룹 삭제
		int deleteProductGroup(String product_group_code);
		//상품 그룹 리스트
		List<ProductGroupVO> getProductGroupList(); 
		//상품그룹 등록
		int insertProductGroup(ProductGroupVO vo); 
		//상품그룹명 중복 확인
		int chkProductGroupName(String product_group_name); 
		
		
		//상품명 중복 확인
		int chkProductName(String product_name); 
		//상품 개수
		int productCnt();
		//상품 리스트(페이징)
		List<ProductVO> selectProductList(Map<String, Object> map);
		//상품 등록
		int insertProduct(ProductVO vo); 
		//상품 상세(수정)
		ProductVO getProduct(String product_code);
		//상품 수정
		int updateProduct(ProductVO vo);
		//상품 삭제
		int deleteProduct(String product_code);
		
		//거래처명 중복확인
		int chkTradeName(String trade_name);
		//거래처 등록
		int insertTrade(TradeVO vo);
		//거래처 개수
		int tradeCnt();
		//거래처 리스트(페이징)
		List<TradeVO> selectTradeList(Map<String, Object> map);
		//거래처 상세(수정)
		TradeVO getTrade(String trade_code);
		//거래처 수정
		int	updateTrade(Map<String, Object> map);
		//거래처 삭제
		int	deleteTrade(String trade_code);
		
		//재고추가 페이지(거래처리스트)
		List<TradeVO> getTradeList();
		//재고명 중복확인
		int chkStockName(String stock_name);
		//재고 등록
		int insertStock(StockVO vo);
		//재고 개수
		int stockCnt();
		//재고 리스트
		List<StockVO> selectStockList(Map<String, Object> map);
		//재고 상세(수정)
		StockVO getStock(String stock_code);
		//재고 수정
		int updateStock(StockVO vo);
		//재고 삭제
		int deleteStock(String stock_code);
	
}
