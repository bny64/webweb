package com.example.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.dto.Board;
import com.example.dto.Reboard;

@Repository
public class ReboardDaoImpl {
	final static String BOARD_NS = "ReboardMapper.";
	
	static Logger logger = LoggerFactory.getLogger(ReboardDaoImpl.class);
	
	@Autowired
	private SqlSessionTemplate template;
	
	public int insertReboard(Reboard Reboard) {
		logger.trace("BoardDaoImpl - insertReboard 동작");
		String stmt = BOARD_NS + "insertReboard";
		return template.update(stmt, Reboard);
	}
	
	public List<Reboard> selectReboard(int boardNo){
		logger.trace("BoardDaoImpl - selectReboard 동작");
		String stmt = BOARD_NS + "selectReboard";
		return template.selectList(stmt, boardNo);
	}
}
