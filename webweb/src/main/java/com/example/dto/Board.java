package com.example.dto;

import java.util.Date;

public class Board {
	int userNo;
	String boardLine1;
	String boardLine2;
	String boardLine3;
	String boardLine4;
	String boardLine5;
	String boardLine6;
	String boardLine7;
	String boardLine8;
	String boardLine9;
	String boardLine10;
	int boardNo;
	String boardTitle;
	String lanuage;
	Date boardDate;
	
	public Board(){};
	
	public Board(int userNo, String boardLine1, String boardLine2, String boardLine3, String boardLine4,
			String boardLine5, String boardLine6, String boardLine7, String boardLine8, String boardLine9,
			String boardLine10, int boardNo, String boardTitle, String lanuage, Date boardDate) {
		super();
		this.userNo = userNo;
		this.boardLine1 = boardLine1;
		this.boardLine2 = boardLine2;
		this.boardLine3 = boardLine3;
		this.boardLine4 = boardLine4;
		this.boardLine5 = boardLine5;
		this.boardLine6 = boardLine6;
		this.boardLine7 = boardLine7;
		this.boardLine8 = boardLine8;
		this.boardLine9 = boardLine9;
		this.boardLine10 = boardLine10;
		this.boardNo = boardNo;
		this.boardTitle = boardTitle;
		this.lanuage = lanuage;
		this.boardDate = boardDate;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public String getBoardLine1() {
		return boardLine1;
	}
	public void setBoardLine1(String boardLine1) {
		this.boardLine1 = boardLine1;
	}
	public String getBoardLine2() {
		return boardLine2;
	}
	public void setBoardLine2(String boardLine2) {
		this.boardLine2 = boardLine2;
	}
	public String getBoardLine3() {
		return boardLine3;
	}
	public void setBoardLine3(String boardLine3) {
		this.boardLine3 = boardLine3;
	}
	public String getBoardLine4() {
		return boardLine4;
	}
	public void setBoardLine4(String boardLine4) {
		this.boardLine4 = boardLine4;
	}
	public String getBoardLine5() {
		return boardLine5;
	}
	public void setBoardLine5(String boardLine5) {
		this.boardLine5 = boardLine5;
	}
	public String getBoardLine6() {
		return boardLine6;
	}
	public void setBoardLine6(String boardLine6) {
		this.boardLine6 = boardLine6;
	}
	public String getBoardLine7() {
		return boardLine7;
	}
	public void setBoardLine7(String boardLine7) {
		this.boardLine7 = boardLine7;
	}
	public String getBoardLine8() {
		return boardLine8;
	}
	public void setBoardLine8(String boardLine8) {
		this.boardLine8 = boardLine8;
	}
	public String getBoardLine9() {
		return boardLine9;
	}
	public void setBoardLine9(String boardLine9) {
		this.boardLine9 = boardLine9;
	}
	public String getBoardLine10() {
		return boardLine10;
	}
	public void setBoardLine10(String boardLine10) {
		this.boardLine10 = boardLine10;
	}
	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}

	public String getBoardTitle() {
		return boardTitle;
	}
	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}
	public String getLanuage() {
		return lanuage;
	}
	public void setLanuage(String lanuage) {
		this.lanuage = lanuage;
	}
	public Date getBoardDate() {
		return boardDate;
	}
	public void setBoardDate(Date boardDate) {
		this.boardDate = boardDate;
	}
	
	
}
