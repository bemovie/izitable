package com.izitable.model;

import java.util.Date;

public class Reservation {
		
	private int resCode;
	private int custCode;
	private int shopCode;
	private Date resDate;
	private Date resTime;
	private int resNop;
	
	public int getResCode() {
		return resCode;
	}
	public void setResCode(int resCode) {
		this.resCode = resCode;
	}
	public int getCustCode() {
		return custCode;
	}
	public void setCustCode(int custCode) {
		this.custCode = custCode;
	}
	public int getShopCode() {
		return shopCode;
	}
	public void setShopCode(int shopCode) {
		this.shopCode = shopCode;
	}
	public Date getResDate() {
		return resDate;
	}
	public void setResDate(Date resDate) {
		this.resDate = resDate;
	}
	public Date getResTime() {
		return resTime;
	}
	public void setResTime(Date resTime) {
		this.resTime = resTime;
	}
	public int getResNop() {
		return resNop;
	}
	public void setResNop(int resNop) {
		this.resNop = resNop;
	}
	
}
