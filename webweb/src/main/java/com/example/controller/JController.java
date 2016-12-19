package com.example.controller;

import java.math.BigDecimal;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.dao.BoardDaoImpl;
import com.example.dao.ReboardDaoImpl;
import com.example.dao.UserDaoImpl;
import com.example.dto.Board;
import com.example.dto.Reboard;
import com.example.dto.Users;

import exception.LoginException;

@Controller
public class JController {

	static Logger logger = LoggerFactory.getLogger(JController.class);

	@Autowired
	UserDaoImpl uDao;
	@Autowired
	BoardDaoImpl bDao;
	@Autowired
	ReboardDaoImpl rDao;

	@InitBinder
	public void setBindingFormat(WebDataBinder binder){
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(format, true));
	}
	
	@ExceptionHandler(LoginException.class)
	public String loginException(){
		return "j-loginException";
	}
	
	@RequestMapping(value="/j-index", method=RequestMethod.GET)
	public String Jmain(HttpSession session){
		session.removeAttribute("userId");
		session.removeAttribute("userNo");
		return "j-index";
	}
	//로그인 메서드
	@RequestMapping(value = "/jlogin", method = RequestMethod.POST)
	public String login(Model model, HttpSession session, @RequestParam String id, @RequestParam String password) {

		Users loginUser = uDao.selectUsers(id);

		if (loginUser != null) {
			if (loginUser.getUserPass().equals(password)) {
				logger.trace("로그인 성공");
				session.setAttribute("userNo", loginUser.getUserNo());
				session.setAttribute("userId", loginUser.getUserId());
				model.addAttribute("lanuageBoard", bDao.selectAllBoard(loginUser.getUserLang()));
				return "j-main";
			} else {
				logger.trace("비밀번호가 맞지 않음");
				// 민국 - 로그인이 안됬을 시, 로그인 실패에 해당하는 페이지나 알람을 보여줘야 함.
				throw new LoginException();

			}
		} else {
			logger.trace("없는 아이디");
			return "j-index";
		}
	}
	
	@RequestMapping(value = "/jlogout", method = RequestMethod.GET)
	public String logout(HttpSession session){
		session.removeAttribute("userNo");
		session.removeAttribute("userId");
		return "j-index";
	}

	@RequestMapping(value = "/jjoin", method = RequestMethod.GET)
	public String join1(Model model) {
		logger.trace("join1 method");
		return "j-join";
	}

	@RequestMapping(value = "/jjoin2", method = RequestMethod.POST)
	public String join2(Model model, @RequestParam String id, @RequestParam String password, @RequestParam String name,
			@RequestParam String lanuage, @RequestParam String email) {
		logger.trace("join2 method");
		BigDecimal userNo = new BigDecimal(0);
		BigDecimal userPoint = new BigDecimal(10);
		Users users = new Users(name, id, password, lanuage, userNo, userPoint, email);
		int result = uDao.insertUsers(users);
		logger.trace("가입 완료");

		return "j-index";
	}

	@RequestMapping(value = "/jback", method = RequestMethod.GET)
	public String back(Model model) {
		logger.trace("back method");
		return "j-index";
	}
	
	@RequestMapping(value = "/jwriteBoard", method = RequestMethod.GET)
	public String writeBoard(Model model) throws ParseException {
		logger.trace("writeBoard method");
		String str = "0000-00-00";
		SimpleDateFormat fdm = new SimpleDateFormat("yyyy-MM-dd");
		Date date = fdm.parse(str);
		Board board = new Board(0, "","","","","","","","","","",
				0, "","",date);
		model.addAttribute("board", board);
		return "j-writeBoard";
	}
	
	@RequestMapping(value = "/jwriteBoard", method = RequestMethod.POST)
	public String writeBoard2(Model model, Board board, HttpSession session) throws ParseException {
		logger.trace("board : {}", board);
		logger.trace("writeBoard2 method");
		String str = "0000-00-00";
		SimpleDateFormat fdm = new SimpleDateFormat("yyyy-MM-dd");
		Date date = fdm.parse(str);
		board.setBoardDate(date);
		String userId = (String) session.getAttribute("userId");
		int userNo = (uDao.selectUsers(userId)).getUserNo();
		board.setUserNo(userNo);
		board.setBoardNo(0);
		
		int result = bDao.insertBoard(board);
		return "j-main";
	}
	
	@RequestMapping(value = "/jdetailBoard", method = RequestMethod.GET)
	public String detailBoard(Model model, int boardNo) {
		logger.trace("detailBoard method");
		Board board = bDao.selectBoard(boardNo);
		model.addAttribute("board", board);
		Reboard reboard = new Reboard();
		model.addAttribute("reboard",reboard);
		List<Reboard> reboards = rDao.selectReboard(boardNo);
		model.addAttribute("reboards",rDao.selectReboard(boardNo));
		logger.trace("reboards : {}", reboards);
		return "j-writeReboard";
	}

	@RequestMapping(value = "/jwriteReboard", method = RequestMethod.POST)
	public String writeReboard(Model model, HttpSession session, Reboard reboard,
			HttpServletRequest request, ModelMap mo) throws ParseException, AddressException, MessagingException {
		logger.trace("writeReboard method");
		
		String str = "0000-00-00";
		SimpleDateFormat fdm = new SimpleDateFormat("yyyy-MM-dd");
		Date date = fdm.parse(str);
		
		reboard.setReboardDate(date);
		reboard.setReboardNo(0);
		reboard.setUserNo((int)session.getAttribute("userNo"));
		rDao.insertReboard(reboard);
		
		String userId = (String)session.getAttribute("userId");
		Users loginUser = uDao.selectUsers(userId);
		
		int boardNo = reboard.getBoardNo();		
		Board board = bDao.selectBoard(boardNo);
		int userNo = board.getUserNo();
		Users mailUser = uDao.selectUserByUserNo(userNo);
		mailSender(request, mo, mailUser.getEmail());
		logger.trace("코멘트 수정 메일 발송 후 메서드");
		model.addAttribute("lanuageBoard", bDao.selectAllBoard(loginUser.getUserLang()));
		return "j-main";
	}
	
	@RequestMapping(value ="/jlanuageBoard", method=RequestMethod.GET)
	public @ResponseBody List<Board> lanuageBoardAjax(Model model, HttpSession session){
		String userId = (String)session.getAttribute("userId");
		Users loginUser = uDao.selectUsers(userId);
		List<Board> boards = bDao.selectAllBoard(loginUser.getUserLang());
		logger.trace("ajax 잘 받음");
		logger.trace("boards : {}", boards);

		return boards;
	}
	
	@RequestMapping(value ="/jallBoard", method=RequestMethod.GET)
	public @ResponseBody List<Board> allBoardAjax(Model model, HttpSession session){
		List<Board> boards = bDao.selectAllBoard2();
		logger.trace("ajax 잘 받음");
		logger.trace("boards : {}", boards);

		return boards;
	}
	
	@RequestMapping(value ="/jmyBoard", method=RequestMethod.GET)
	public @ResponseBody List<Board> myBoardAjax(Model model, HttpSession session){
		int userNo = (int)session.getAttribute("userNo");
		List<Board> boards = bDao.selectBoardUser(userNo);
		logger.trace("ajax 잘 받음");
		logger.trace("boards : {}", boards);

		return boards;
	}
	
	@RequestMapping(value ="jdetailMyBoard", method=RequestMethod.GET)
	public String detailMyBoard(Model model, HttpSession session,int boardNo){
		logger.trace("detailMyBoard method");
		Board board = bDao.selectBoard(boardNo);
		model.addAttribute("board", board);
		model.addAttribute("reboards",rDao.selectReboard(boardNo));
		return "j-detailMyBoard";
	}
	
	@RequestMapping(value ="jmyDetailBoardReturn", method=RequestMethod.GET)
	public String myDetailBoardReturn(Model model, HttpSession session, @RequestParam int boardNo){
		int result = bDao.deleteBoard(boardNo);
		logger.trace("내 글 삭제 성공");
		return "j-main";
	}
	
	public void mailSender(HttpServletRequest request, ModelMap mo,
			String recipient) throws AddressException, MessagingException {
		
		// 네이버일 경우 smtp.naver.com 을 입력합니다.
		// Google일 경우 smtp.gmail.com 을 입력합니다.
		String host = "smtp.naver.com";
		
		final String username = "bny64";       //네이버 아이디를 입력해주세요. @nave.com은 입력하지 마시구요.
		final String password = "skaduf64!";   //네이버 이메일 비밀번호를 입력해주세요.
		int port=465; //포트번호
		 
		
		// 메일 내용
		//받는 사람의 메일주소를 입력해주세요. -> 파라미터 recipient
		String subject = "コメントが入力されました"; 					  //메일 제목 입력해주세요.
		String body = "ウェブサイトで確認してください"; //메일 내용 입력해주세요.
		 
		Properties props = System.getProperties(); // 정보를 담기 위한 객체 생성
		 
		// SMTP 서버 정보 설정
		props.put("mail.smtp.host", host);
		props.put("mail.smtp.port", port);
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.ssl.enable", "true");
		props.put("mail.smtp.ssl.trust", host);
		   
		//Session 생성
		Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
			String un=username;
			String pw=password;
			protected javax.mail.PasswordAuthentication getPasswordAuthentication() {
				return new javax.mail.PasswordAuthentication(un, pw);
			}
		});
		session.setDebug(true); //for debug
		   
		Message mimeMessage = new MimeMessage(session); //MimeMessage 생성
		mimeMessage.setFrom(new InternetAddress("bny64@naver.com")); //발신자 셋팅 , 보내는 사람의 이메일주소를 한번 더 입력합니다. 이때는 이메일 풀 주소를 다 작성해주세요.
		mimeMessage.setRecipient(Message.RecipientType.TO, new InternetAddress(recipient)); //수신자셋팅 //.TO 외에 .CC(참조) .BCC(숨은참조) 도 있음


		mimeMessage.setSubject(subject);  //제목셋팅
		mimeMessage.setText(body);        //내용셋팅
		Transport.send(mimeMessage); //javax.mail.Transport.send() 이용
		logger.trace("메일 발송 완료");
	}
}
