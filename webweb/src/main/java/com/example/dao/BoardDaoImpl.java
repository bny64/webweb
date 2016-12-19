package com.example.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.dto.Board;

@Repository
public class BoardDaoImpl {
	final static String BOARD_NS = "BoardMapper.";
	
	static Logger logger = LoggerFactory.getLogger(BoardDaoImpl.class);
	
	@Autowired
	private SqlSessionTemplate template;
	
	public int insertBoard(Board board) {
		logger.trace("BoardDaoImpl - insertBoard 동작");
		String stmt = BOARD_NS + "insertBoard";
		return template.update(stmt, board);
	}
	
	public List<Board> selectAllBoard(String lanuage){
		logger.trace("BoardDaoImpl - selectAllBoard 동작");
		String stmt = BOARD_NS + "selectAllBoard";
		return template.selectList(stmt, lanuage);
	}
	
	public Board selectBoard(int boardNo){
		logger.trace("BoardDaoImpl - selectBoard 동작");
		String stmt = BOARD_NS + "selectBoard";
		return template.selectOne(stmt, boardNo);
	}
	
	public List<Board> selectAllBoard2(){
		logger.trace("BoardDaoImpl - selectAllBoard2 동작");
		String stmt = BOARD_NS + "selectAllBoard2";
		return template.selectList(stmt);
	}
	
	public List<Board> selectBoardUser(int userNo){
		logger.trace("BoardDaoImpl - selectBoardUser 동작");
		String stmt = BOARD_NS + "selectBoardUser";
		return template.selectList(stmt, userNo);
	}
	
	public int deleteBoard(int boardNo){
		logger.trace("BoardDaoImpl - deleteBoard 동작");
		String stmt = BOARD_NS + "deleteBoard";
		return template.update(stmt, boardNo);
	}
}
