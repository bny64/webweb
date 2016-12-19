package com.example.test;

import static org.hamcrest.CoreMatchers.is;
import static org.hamcrest.CoreMatchers.notNullValue;
import static org.junit.Assert.*;

import java.math.BigDecimal;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.example.dao.BoardDaoImpl;
import com.example.dao.ReboardDaoImpl;
import com.example.dao.UserDaoImpl;
import com.example.dto.Board;
import com.example.dto.Reboard;
import com.example.dto.Users;

import com.example.config.ApplicationConfig;;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = { ApplicationConfig.class })
public class AllTest {

	static Logger logger = LoggerFactory.getLogger(AllTest.class);

	@Autowired
	UserDaoImpl uDao;
	@Autowired
	BoardDaoImpl bDao;
	@Autowired
	ReboardDaoImpl rDao;

	// @Test
	// 회원 가입 테스트
	public void insertUser() {
		BigDecimal userNo = new BigDecimal(0);
		BigDecimal userPoint = new BigDecimal(10);
		Users users = new Users("배남열", "bny64", "199164", "korean", userNo, userPoint, "bny64@naver.com");
		uDao.insertUsers(users);
		assertThat(uDao.insertUsers(users), is(1));
	}

	// @Test
	public void selectUser() {
		Users users = uDao.selectUsers("bny64");
		assertThat(users.getUserLang(), is("korean"));
	}

	// @Test
	public void insertBoard() throws ParseException {
		String str = "2016-11-03";
		SimpleDateFormat fdm = new SimpleDateFormat("yyyy-MM-dd");
		Date date = fdm.parse(str);
		Board board = new Board(21, "안녕하세요", "", "", "", "", "", "", "", "", "", 0, "고쳐주세요", "korean", date);
		logger.trace("board : {}", board);
		assertThat(bDao.insertBoard(board), is(1));
	}

	// @Test
	public void selectAllBoard() {
		List<Board> boards = bDao.selectAllBoard("korean");
		logger.trace("boards : {}", boards);
		assertThat(boards.size(), notNullValue());
	}

	// @Test
	public void selectBoard() {
		Board board = bDao.selectBoard(6);
		logger.trace("board : {}", board);
	}

	// @Test
	public void insertReboard() throws ParseException {
		String str = "2016-11-03";
		SimpleDateFormat fdm = new SimpleDateFormat("yyyy-MM-dd");
		Date date = fdm.parse(str);
		Reboard reboard = new Reboard(21, 0, 2, "", "", "", "", "", "", "", "", "", "", "korean", date);
		logger.trace("board : {}", reboard);
		assertThat(rDao.insertReboard(reboard), is(1));
	}

	// @Test
	public void selectReboard() {
		List<Reboard> list = rDao.selectReboard(1);
		logger.trace("list : {}", list);
		assertThat(list.size(), is(1));
	}

	// @Test
	public void selectAllBoard2() {
		List<Board> list = bDao.selectAllBoard2();
		logger.trace("list : {]", list);
	}

	// @Test
	public void selectBoardUser() {
		List<Board> list = bDao.selectBoardUser(21);
		logger.trace("list : {]", list);
	}

	// @Test
	public void deleteBoard() {
		int result = bDao.deleteBoard(2);
		assertThat(result, is(1));
	}

	@Test
	public void selectUserByUserNo() {
		Users user = uDao.selectUserByUserNo(41);
		assertThat(user.getUserName(), is("배남열"));
	}
}
