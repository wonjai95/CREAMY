package com.spring.Creamy_CRM.User_service;

import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.spring.Creamy_CRM.Host_dao.LoginDAOImpl;
import com.spring.Creamy_CRM.User_dao.UserReviewDAOImpl;
import com.spring.Creamy_CRM.VO.ReservationVO;
import com.spring.Creamy_CRM.VO.ReviewVO;

@Service
public class UserReviewServiceImpl implements UserReviewService {

	@Autowired
	UserReviewDAOImpl dao_review;
	
	@Autowired
	LoginDAOImpl dao_login;
	
	//예약목록 받아오기
	@Override
	public void getReservationList(HttpServletRequest req, Model model) {
		String id = (String) req.getSession().getAttribute("id");
		System.out.println("id : "+id);
		
		Date today = new Date(System.currentTimeMillis());
		
		List<ReservationVO> list = dao_review.getReservationList(id);
		req.setAttribute("list", list);
		req.setAttribute("today", today);
	}

	//한건의 예약정보 받아오기 - 안씀
	@Override
	public void getReservationdetail(HttpServletRequest req, Model model) {
		String res_code = req.getParameter("res_code");
		Date today = new Date(System.currentTimeMillis());
		
		ReservationVO vo = dao_review.getReservationDetail(res_code);
		
		req.setAttribute("today", today);
		req.setAttribute("vo", vo);
		req.setAttribute("res_code", res_code);
	}

	//review write action
	@Override
	public void insertReviewAction(HttpServletRequest req, Model model) {
		String res_code = req.getParameter("res_code");
		String id = (String) req.getSession().getAttribute("id");
		//유저 코드 들고오기
		String user_code = dao_login.getUserInfo(id).getUser_code();
		
		String title = req.getParameter("title");
		String content = req.getParameter("contents");
		int readCnt = 0;
		Date date = new Date(System.currentTimeMillis());
		int star = Integer.parseInt(req.getParameter("star"));
		String imgPath = req.getParameter("file_name");
		
		ReviewVO vo = new ReviewVO();
		vo.setUser_code(user_code);
		vo.setTitle(title);
		vo.setContent(content);
		vo.setReadCnt(readCnt);
		vo.setRegDate(date);
		vo.setStar(star);
		vo.setReview_img(imgPath);
		vo.setRes_code(res_code);
		
		System.out.println("이미지 " +imgPath);
		System.out.println("별 " +star);
		
		
		
	  int insertcnt = dao_review.InsertReview(vo);
	  System.out.println("후기 등록 성공 : "+insertcnt);
	  
	  if(insertcnt > 0) { int modifyCnt = dao_review.modifyresCheck(res_code);
	  System.out.println("예약 수정 성공  : "+modifyCnt); }
	 
			
		
	}

	//내 리뷰 보기
	@Override
	public void getMyReviewList(HttpServletRequest req, Model model) {
		String id = (String) req.getSession().getAttribute("id");
		//유저 코드 들고오기
		String user_code = dao_login.getUserInfo(id).getUser_code();
		
		List<ReviewVO> list = dao_review.getMyReviewList(user_code);
		
		req.setAttribute("list", list);
		
	}

	//전체 후기 리스트 출력
	@Override
	public void getReviewList(HttpServletRequest req, Model model) {

		List<ReviewVO> list = dao_review.getAllReviewList();
		
		req.setAttribute("list", list);
	}

	//매장별 후기 보기
	@Override
	public void getStoreReviewList(HttpServletRequest req, Model model) {
		String host_code = (String) req.getSession().getAttribute("code");
		
		List<ReviewVO> list = dao_review.getStoreReviewList(host_code);
		req.setAttribute("list", list);
	}

}
