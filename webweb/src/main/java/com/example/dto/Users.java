package com.example.dto;

import java.math.BigDecimal;

public class Users {
	String userName;
	String userId;
	String userPass;
	String lanuage;
	String email;
	int userNo;
	int userPoint;
	
	
	
	public Users(String userName, String userId, String userPass, String lanuage, BigDecimal userNo, BigDecimal userPoint, String email) {
		super();
		this.userName = userName;
		this.userId = userId;
		this.userPass = userPass;
		this.lanuage = lanuage;
		this.userNo = userNo.intValue();
		this.userPoint = userPoint.intValue();
		this.email = email;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPass() {
		return userPass;
	}
	public void setUserPass(String userPass) {
		this.userPass = userPass;
	}
	public String getUserLang() {
		return lanuage;
	}
	public void setUserLang(String userLang) {
		this.lanuage = userLang;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public int getUserPoint() {
		return userPoint;
	}
	public void setUserPoint(int userPoint) {
		this.userPoint = userPoint;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
}
