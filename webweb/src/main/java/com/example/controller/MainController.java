package com.example.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.dto.Member;

@Controller
public class MainController {
	
	static Logger logger = LoggerFactory.getLogger(MainController.class);
	
	@RequestMapping(value="/showMessage", method=RequestMethod.GET)
	public String showMessage(Model model){
		
		logger.trace("성공");
		return "showMessage";
	}
	
	@RequestMapping(value="/gidomoon", method=RequestMethod.GET)
	public String gidomoon(Model model){
		logger.trace("기도문으로 이동");
		return "gidomoon";
	}
	
	@RequestMapping(value="/join", method=RequestMethod.GET)
	public String viewMember(Model model){
		logger.trace("join 페이지로 이동");
		return "join";
	}
	
	@RequestMapping(value="/my", method=RequestMethod.GET)
	public String myView(Model model){
		logger.trace("my 페이지로 이동");
		return "my";
	}
	
	@RequestMapping(value="/calendar", method=RequestMethod.GET)
	public String calendar(Model model){
		return "calendar";
	}
	
	@RequestMapping(value="/map", method=RequestMethod.GET)
	public String map(Model model){
		return "map";
	}
}
