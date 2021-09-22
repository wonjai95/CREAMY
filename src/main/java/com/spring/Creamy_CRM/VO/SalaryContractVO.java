package com.spring.Creamy_CRM.VO;

import java.sql.Date;

public class SalaryContractVO {
	
	private String salary_contract_code;		// 급여 계약 코드
	private String employee_code;				// 직원코드
	private int monthly_salary;					// 월급
	private int annual_salary;					// 연봉
	private String bank_code;					// 은행코드
	private String payment_date;				// 지급일
	private Date contract_date;					// 계약일
	private Date con_start;						// 계약 적용기간 시작
	private Date con_end;						// 계약 적용기간 끝
	
	
	public String getSalary_contract_code() {
		return salary_contract_code;
	}
	public void setSalary_contract_code(String salary_contract_code) {
		this.salary_contract_code = salary_contract_code;
	}
	public String getEmployee_code() {
		return employee_code;
	}
	public void setEmployee_code(String employee_code) {
		this.employee_code = employee_code;
	}
	public int getMonthly_salary() {
		return monthly_salary;
	}
	public void setMonthly_salary(int monthly_salary) {
		this.monthly_salary = monthly_salary;
	}
	public int getAnnual_salary() {
		return annual_salary;
	}
	public void setAnnual_salary(int annual_salary) {
		this.annual_salary = annual_salary;
	}
	public String getBank_code() {
		return bank_code;
	}
	public void setBank_code(String bank_code) {
		this.bank_code = bank_code;
	}
	public String getPayment_date() {
		return payment_date;
	}
	public void setPayment_date(String payment_date) {
		this.payment_date = payment_date;
	}
	public Date getContract_date() {
		return contract_date;
	}
	public void setContract_date(Date contract_date) {
		this.contract_date = contract_date;
	}
	public Date getCon_start() {
		return con_start;
	}
	public void setCon_start(Date con_start) {
		this.con_start = con_start;
	}
	public Date getCon_end() {
		return con_end;
	}
	public void setCon_end(Date con_end) {
		this.con_end = con_end;
	}
	
	
	
}
