/*
 * 작성자 : 이시현
 * 작성일 : 2021.09.20
 *
*/
package com.spring.Creamy_CRM.VO;

import java.sql.Date;

public class ReservationVO {
	
	private String res_code;				// 예약코드(시퀀스)
	private String res_state;				// 예약상태
	private Date res_date;					// 예약일
	private int res_hour;					// 예약시각
	private String employee_code;			// 예약담당자(= employee_code)
	private String user_id;					// 회원아이디
	private String res_detail_code;			// 예약상세코드(시퀀스)
	private int res_cnt;					// 인원수
	private String res_indiv_request;		// 별도 요청
	private String product_code;			// 예약할 상품서비스
	private String res_memo;				// 기타메모
	private String res_room;				// 예약호실
	
	
	public String getRes_code() {
		return res_code;
	}
	public void setRes_code(String res_code) {
		this.res_code = res_code;
	}
	
	public String getRes_state() {
		return res_state;
	}
	public void setRes_state(String res_state) {
		this.res_state = res_state;
	}
	
	public Date getRes_date() {
		return res_date;
	}
	public void setRes_date(Date res_date) {
		this.res_date = res_date;
	}
	
	public int getRes_hour() {
		return res_hour;
	}
	public void setRes_hour(int res_hour) {
		this.res_hour = res_hour;
	}
	
	public String getEmployee_code() {
		return employee_code;
	}
	public void setEmployee_code(String employee_code) {
		this.employee_code = employee_code;
	}
	
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	
	public String getRes_detail_code() {
		return res_detail_code;
	}
	public void setRes_detail_code(String res_detail_code) {
		this.res_detail_code = res_detail_code;
	}
	
	public int getRes_cnt() {
		return res_cnt;
	}
	public void setRes_cnt(int res_cnt) {
		this.res_cnt = res_cnt;
	}
	
	public String getRes_indiv_request() {
		return res_indiv_request;
	}
	public void setRes_indiv_request(String res_indiv_request) {
		this.res_indiv_request = res_indiv_request;
	}
	
	public String getProduct_code() {
		return product_code;
	}
	public void setProduct_code(String product_code) {
		this.product_code = product_code;
	}
	
	public String getRes_memo() {
		return res_memo;
	}
	public void setRes_memo(String res_memo) {
		this.res_memo = res_memo;
	}
	
	public String getRes_room() {
		return res_room;
	}
	public void setRes_room(String res_room) {
		this.res_room = res_room;
	}
	
	
	
	
}


/* 
-- 예약 테이블
CREATE TABLE reservation_tbl(
    res_code                VARCHAR2(10),                                   -- 예약코드(시퀀스)
    res_state               VARCHAR2(50)    NOT NULL,                       -- 예약상태   
    res_date                DATE            DEFAULT SYSDATE,                -- 예약일   
    res_hour                NUMBER(2)       NOT NULL,                       -- 예약시각
    employee_code           VARCHAR2(10)    NOT NULL,                       -- 예약담당자(= employee_code)
    user_id                 VARCHAR2(20)    NOT NULL,                       -- 회원아이디
    res_detail_code         VARCHAR2(10),                                   -- 예약 상세코드
    
    CONSTRAINT res_code_pk PRIMARY KEY(res_code),                           -- 예약 코드 PK
    CONSTRAINT reservation_employee_code_fk FOREIGN KEY(employee_code)
     REFERENCES employee_tbl(employee_code) ON DELETE CASCADE,              -- 예약담당자 FK (직원테이블 employee_code)
    CONSTRAINT reservation_user_id_fk FOREIGN KEY(user_id)
     REFERENCES Auth_tbl(id) ON DELETE CASCADE,                             -- 회원아이디 FK (인증테이블 id)
    CONSTRAINT reservation_detail_code_fk FOREIGN KEY(res_detail_code)
     REFERENCES reservation_detail_tbl(res_detail_code) ON DELETE CASCADE   -- 예약상세코드 FK (예약상세테이블 res_detail_code)
);


-- 예약상세정보 테이블
CREATE TABLE reservation_detail_tbl(
    res_detail_code        VARCHAR2(10),                                    -- 예약상세코드(시퀀스)
    res_cnt                NUMBER(2),                                       -- 인원수
    res_indiv_request      VARCHAR2(1000),                                  -- 별도 요청
    product_code           VARCHAR2(10),                                    -- 예약할 상품서비스   
    res_memo               VARCHAR2(500),                                   -- 기타메모  
    res_room               VARCHAR2(4),                                     -- 예약호실
    
    CONSTRAINT res_detail_code_pk PRIMARY KEY(res_detail_code),             -- 예약상세코드 PK
    CONSTRAINT product_code_res_fk FOREIGN KEY(product_code)
     REFERENCES product_tbl(product_code) ON DELETE CASCADE                 -- 상품코드 FK
 */