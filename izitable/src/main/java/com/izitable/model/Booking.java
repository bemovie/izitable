package com.izitable.model;

import java.util.Date;

public class Booking {
	
	private int bookingId;		//예약 번호
	private int userNo;			//회원 번호
	private int shopNo;			//매장 번호
	private Date bookingDate;	//예약 날짜
	private String bookingTime;	//예약 시간
	private int bookingMemNum;	//예약 인원
	
	private String compName;	//매장 이름

	public int getBookingId() {
		return bookingId;
	}

	public void setBookingId(int bookingId) {
		this.bookingId = bookingId;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public int getShopNo() {
		return shopNo;
	}

	public void setShopNo(int shopNo) {
		this.shopNo = shopNo;
	}

	public Date getBookingDate() {
		return bookingDate;
	}

	public void setBookingDate(Date bookingDate) {
		this.bookingDate = bookingDate;
	}

	public String getBookingTime() {
		return bookingTime;
	}

	public void setBookingTime(String bookingTime) {
		this.bookingTime = bookingTime;
	}

	public int getBookingMemNum() {
		return bookingMemNum;
	}

	public void setBookingMemNum(int bookingMemNum) {
		this.bookingMemNum = bookingMemNum;
	}

	public String getCompName() {
		return compName;
	}

	public void setCompName(String compName) {
		this.compName = compName;
	}
		
}
