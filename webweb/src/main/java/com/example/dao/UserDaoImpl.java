package com.example.dao;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.dto.Users;

@Repository
public class UserDaoImpl {

	final static String USERS_NS = "UserMapper.";
	
	static Logger logger = LoggerFactory.getLogger(UserDaoImpl.class);
	@Autowired
	private SqlSessionTemplate template;
	
	public int insertUsers(Users users) {
		logger.trace("UserDaoImpl - insertUsers 동작");
		String stmt = USERS_NS + "insertUser";
		return template.update(stmt, users);
	}
	
	public Users selectUsers(String userId){
		logger.trace("UserDaoImpl - selectUsers 동작");
		String stmt = USERS_NS + "selectUser";
		return template.selectOne(stmt, userId);
	}
	
	public Users selectUserByUserNo(int userNo){
		logger.trace("UserDaoImpl - selectUserByUserNo 동작");
		String stmt = USERS_NS + "selectUserNo";
		return template.selectOne(stmt, userNo);
	}
}
