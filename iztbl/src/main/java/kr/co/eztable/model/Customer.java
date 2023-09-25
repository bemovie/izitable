package kr.co.eztable.model;

import java.util.Date;

public class Customer {
	private String custCode;
	private String custPhone;
	private String custPassword;
	private String custName;
	private int cache;
	private Date custRegDate;
	
	public Date getCustRegDate() {
		return custRegDate;
	}
	public void setCustRegDate(Date custRegDate) {
		this.custRegDate = custRegDate;
	}
	public String getCustCode() {
		return custCode;
	}
	public void setCustCode(String custCode) {
		this.custCode = custCode;
	}
	public String getCustPhone() {
		return custPhone;
	}
	public void setCustPhone(String custPhone) {
		this.custPhone = custPhone;
	}
	public String getCustPassword() {
		return custPassword;
	}
	public void setCustPassword(String custPassword) {
		this.custPassword = custPassword;
	}
	public String getCustName() {
		return custName;
	}
	public void setCustName(String custName) {
		this.custName = custName;
	}
	public int getCache() {
		return cache;
	}
	public void setCache(int cache) {
		this.cache = cache;
	}
	
}
