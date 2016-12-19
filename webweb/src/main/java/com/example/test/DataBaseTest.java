package com.example.test;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.example.config.ApplicationConfig;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = { ApplicationConfig.class })
public class DataBaseTest {
	static Logger logger = LoggerFactory.getLogger(DataBaseTest.class);
	
	@Autowired
	ApplicationConfig config;
	
	@Test
	public void DBTest(){
		logger.trace(config.toString());
	};

}
