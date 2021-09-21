/*
 * 작성자 : 이시현
 * 작성일 : 2021-09-20 ~ 2021-09-20
 * 예약 관련 service
 * 
*/
package com.spring.Creamy_CRM.Host_service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.spring.Creamy_CRM.Host_dao.ReservationDAO;
import com.spring.Creamy_CRM.VO.reservationVO;

@Service
public class ReservationServiceImpl implements ReservationService {

	@Autowired
	private ReservationDAO dao;
	
//======= 예약요청 탭 =======	
	// 예약요청 목록	
	@Override
	public void requestList(HttpServletRequest req, Model model) {
		// 3단계. 화면으로부터 입력받은 값을 받아온다.
		// 페이징 (변수들)
		int pageSize = 25;		// 한 페이지당 출력할 글의 갯수
		int pageBlock = 10;		// 한 블럭당 페이지의 갯수
		
		int cnt = 0;			// 글 갯수
		int start = 0;			// 현재(각) 페이지의 시작 글 번호
		int end = 0;			// 현재(각) 페이지의 마지막 글 번호
		int number = 0;			// 출력용 글 번호 (글 제목 & 내용이 삭제가 되어도 번호는 바로 이관/대체될 수 있도록)
		String pageNum = "";	// 페이지 번호
		int currentPage = 0;	// 현재 페이지 
		
		int pageCount = 0;		// 페이지 갯수
		int startPage = 0;		// 시작 페이지
		int endPage = 0;		// 마지막 페이지
		
		// 5-1단계. 게시글 갯수 조회
		cnt = dao.getRequestCnt();
		System.out.println("cnt => " + cnt);
		
		pageNum = req.getParameter("pageNum");
		
		if(pageNum == null) {
			pageNum = "1";	// 첫 페이지를 1페이지로 지정한다.
		}
		
		// 글 30건 기준
		currentPage = Integer.parseInt(pageNum);
		System.out.println("currentPage : " + currentPage);
		
		// 페이지 갯수 p6=(30/5) + (0 = 나머지 페이지)
		// (페이지 갯수 + 나머지)가 있으면 1페이지를 추가, 그렇지 않으면 0으로 남겨라.
		pageCount = (cnt / pageSize) + (cnt % pageSize > 0 ? 1 : 0);
		
		// 현재 페이지 시작 글 번호(페이지 별)
		// start = (currentPage - 1) * pageSize + 1;
		// 1 = (1 -1) * 5 + 1
		start = (currentPage - 1) * pageSize + 1;
		
		// 현재 페이지 마지막 글 번호(페이지 별)
		// end = start +  pageSize - 1;
		// 5 = 1 + 5 - 1
		end = start + pageSize - 1;
		
		System.out.println("start : " + start);
		System.out.println("end : " + end);
		
		// 출력용 글 번호
		// 예) 30 = 30 - (1 - 1) * 5;  // = 1페이지
		// number = cnt - (currentPage - 1) * pageSize;
		number = cnt - (currentPage - 1) * pageSize;
		
		System.out.println("number : " + number);
		System.out.println("pageSize : " + pageSize);
		
		// 시작 페이지
		// 1 = (1 / 3) * 3 + 1;
		// startPage = (currentPage / pageBlock) * pageBlock + 1;
		startPage = (currentPage / pageBlock) * pageBlock + 1;
		if(currentPage % pageBlock == 0) startPage -= pageBlock;
		
		System.out.println("startPage : " + startPage);
		
		// 마지막 페이지
		// 3 = 1 + 3 - 1
		// endPage = startPage + pageBlock - 1;
		endPage = startPage + pageBlock - 1;
		if(endPage > pageCount) endPage = pageCount;
		
		System.out.println("endPage : " + endPage);
		
		System.out.println("==============================");
		
		List<reservationVO> dtos = null;

		if(cnt > 0) {
			// 5-2단계. 게시글 목록 조회
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("start", start);
			map.put("end", end);
			
			dtos = dao.getRequestList(map);  // dtos대신 list로 매개변수 줘도 무방하다.
		}
		// 6단계. jsp로 전달하기 위해 request나 session에 처리결과를 저장
		model.addAttribute("dtos", dtos);			// 리스트 = 게시글 목록
		model.addAttribute("cnt", cnt);			// 글 갯수
		model.addAttribute("pageNum", pageNum);	// 페이지 번호
		model.addAttribute("number", number);		// 출력용 글 번호

		if(cnt > 0) {
			model.addAttribute("startPage", startPage);		// 시작 페이지 
			model.addAttribute("endPage", endPage);			// 마지막 페이지
			model.addAttribute("pageBlock", pageBlock);		// 한 블럭당 페이지 갯수
			model.addAttribute("pageCount", pageCount);		// 페이지 갯수
			model.addAttribute("currentPage", currentPage);	// 현재 페이지
		}
	}

	// 예약요청 상세 페이지
	@Override
	public void requestDetailAction(HttpServletRequest req, Model model) {
		// 3단계. 화면으로부터 입력받은 값을 받아온다.
		// http://localhost:8080/프로젝트명/boardDetail.bo?num=25&pageNum=2&number=25
		int num = Integer.parseInt(req.getParameter("num"));
		int pageNum = Integer.parseInt(req.getParameter("pageNum"));
		int number = Integer.parseInt(req.getParameter("number"));
		
		// 5단계. 게시글 갯수 조회
		reservationVO vo = dao.getRequestDetail(num);
		
		// 6단계. jsp로 전달하기 위해 request나 session에 처리결과를 저장
		model.addAttribute("pageNum", pageNum);
		model.addAttribute("number", number);
		model.addAttribute("dto", vo);
	}

	// 예약요청 수정처리 페이지
	@Override
	public void modifyAction(HttpServletRequest req, Model model) {
		// 3단계. 화면으로부터 입력받은 값(= hidden값)을 받아온다.
		int num = Integer.parseInt(req.getParameter("num"));
		int pageNum = Integer.parseInt(req.getParameter("pageNum"));
		
		// reservationVO vo 바구니 생성
		reservationVO vo = new reservationVO();
		
		// 화면으로부터 입력받은 값(= boardModifyDetail.jsp의 작성자, 비밀번호, 제목, 내용) 그리고 num을 받아온다.
//		vo.setMng_pwd(req.getParameter("mng_pwd"));
//		vo.setPf_title(req.getParameter("pf_title"));
//		vo.setPf_content(req.getParameter("pf_content"));
//		vo.setPf_url(req.getParameter("pf_url"));
//		vo.setPf_num(num);  // update시, WHERE절에서 key를 비교하기 위해서.
		
		int updateCnt = dao.updateRequest(vo);
		System.out.println("updateCnt : " + updateCnt);
		
		// 5-2단계. 상세 페이지 조회
		//이거 필요가 있을까??vo = dao.getProfitDetail(num);
		
		// 6단계. jsp로 전달하기 위해 request나 session에 처리결과를 저장		
		model.addAttribute("num", num);
		model.addAttribute("pageNum", pageNum);
		model.addAttribute("updateCnt", updateCnt);
		//model.addAttribute("dto", vo);
		
	}

	// 예약요청 삭제처리 페이지
	@Override
	public void deleteAction(HttpServletRequest req, Model model) {
		// 3단계. 화면으로부터 입력받은 값(= hidden값, input(비밀번호)값)을 받아온다.
		int num = Integer.parseInt(req.getParameter("num"));
		int pageNum = Integer.parseInt(req.getParameter("pageNum"));
		
		// 5단계. 게시글 삭제 처리
		int deleteCnt = dao.deleteRequest(num);
		System.out.println("deleteCnt : " + deleteCnt);
		model.addAttribute("deleteCnt", deleteCnt);
	
		// 6단계. jsp로 전달하기 위해 request나 session에 처리결과를 저장
		model.addAttribute("pageNum", pageNum);
	}

//======= 예약조회 탭 =======
	// 예약조회 목록
	@Override
	public void completeList(HttpServletRequest req, Model model) {
		// 3단계. 화면으로부터 입력받은 값을 받아온다.
		// 페이징 (변수들)
		int pageSize = 25;		// 한 페이지당 출력할 글의 갯수
		int pageBlock = 10;		// 한 블럭당 페이지의 갯수
		
		int cnt = 0;			// 글 갯수
		int start = 0;			// 현재(각) 페이지의 시작 글 번호
		int end = 0;			// 현재(각) 페이지의 마지막 글 번호
		int number = 0;			// 출력용 글 번호 (글 제목 & 내용이 삭제가 되어도 번호는 바로 이관/대체될 수 있도록)
		String pageNum = "";	// 페이지 번호
		int currentPage = 0;	// 현재 페이지 
		
		int pageCount = 0;		// 페이지 갯수
		int startPage = 0;		// 시작 페이지
		int endPage = 0;		// 마지막 페이지
		
		// 5-1단계. 게시글 갯수 조회
		cnt = dao.getCompleteCnt();
		System.out.println("cnt => " + cnt);
		
		pageNum = req.getParameter("pageNum");
		
		if(pageNum == null) {
			pageNum = "1";	// 첫 페이지를 1페이지로 지정한다.
		}
		
		// 글 30건 기준
		currentPage = Integer.parseInt(pageNum);
		System.out.println("currentPage : " + currentPage);
		
		// 페이지 갯수 p6=(30/5) + (0 = 나머지 페이지)
		// (페이지 갯수 + 나머지)가 있으면 1페이지를 추가, 그렇지 않으면 0으로 남겨라.
		pageCount = (cnt / pageSize) + (cnt % pageSize > 0 ? 1 : 0);
		
		// 현재 페이지 시작 글 번호(페이지 별)
		// start = (currentPage - 1) * pageSize + 1;
		// 1 = (1 -1) * 5 + 1
		start = (currentPage - 1) * pageSize + 1;
		
		// 현재 페이지 마지막 글 번호(페이지 별)
		// end = start +  pageSize - 1;
		// 5 = 1 + 5 - 1
		end = start + pageSize - 1;
		
		System.out.println("start : " + start);
		System.out.println("end : " + end);
		
		// 출력용 글 번호
		// 예) 30 = 30 - (1 - 1) * 5;  // = 1페이지
		// number = cnt - (currentPage - 1) * pageSize;
		number = cnt - (currentPage - 1) * pageSize;
		
		System.out.println("number : " + number);
		System.out.println("pageSize : " + pageSize);
		
		// 시작 페이지
		// 1 = (1 / 3) * 3 + 1;
		// startPage = (currentPage / pageBlock) * pageBlock + 1;
		startPage = (currentPage / pageBlock) * pageBlock + 1;
		if(currentPage % pageBlock == 0) startPage -= pageBlock;
		
		System.out.println("startPage : " + startPage);
		
		// 마지막 페이지
		// 3 = 1 + 3 - 1
		// endPage = startPage + pageBlock - 1;
		endPage = startPage + pageBlock - 1;
		if(endPage > pageCount) endPage = pageCount;
		
		System.out.println("endPage : " + endPage);
		
		System.out.println("==============================");
		
		List<reservationVO> dtos = null;

		if(cnt > 0) {
			// 5-2단계. 게시글 목록 조회
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("start", start);
			map.put("end", end);
			
			dtos = dao.getCompleteList(map);  // dtos대신 list로 매개변수 줘도 무방하다.
		}
		// 6단계. jsp로 전달하기 위해 request나 session에 처리결과를 저장
		model.addAttribute("dtos", dtos);			// 리스트 = 게시글 목록
		model.addAttribute("cnt", cnt);			// 글 갯수
		model.addAttribute("pageNum", pageNum);	// 페이지 번호
		model.addAttribute("number", number);		// 출력용 글 번호

		if(cnt > 0) {
			model.addAttribute("startPage", startPage);		// 시작 페이지 
			model.addAttribute("endPage", endPage);			// 마지막 페이지
			model.addAttribute("pageBlock", pageBlock);		// 한 블럭당 페이지 갯수
			model.addAttribute("pageCount", pageCount);		// 페이지 갯수
			model.addAttribute("currentPage", currentPage);	// 현재 페이지
		}
	}

}
