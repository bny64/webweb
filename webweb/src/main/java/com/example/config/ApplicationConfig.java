package com.example.config;

import javax.sql.DataSource;

import org.apache.commons.dbcp2.BasicDataSource;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.io.ClassPathResource;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import ch.qos.logback.classic.Logger;

@PropertySource({"classpath:/config/dbconfig.properties"})
@ComponentScan(basePackages={"com.example.dao"})
@Configuration
@EnableTransactionManagement
public class ApplicationConfig {

	@Bean
	public PlatformTransactionManager transactionManager(DataSource ds) {
		PlatformTransactionManager tm = new DataSourceTransactionManager(ds);
		return tm;
	}

	@Bean
	public DataSource dataSource(@Value("${db.driverClassName}") String driver, @Value("${db.url}") String url,
			@Value("${db.userName}") String id, @Value("${db.password}") String pass) {

		
		BasicDataSource ds = new BasicDataSource();
		ds.setDriverClassName(driver);
		ds.setUrl(url);
		ds.setUsername(id);
		ds.setPassword(pass);

		return ds;
	}

	@Bean
	public SqlSessionFactoryBean sqlSessionFactoryBean(DataSource ds) {
		SqlSessionFactoryBean bean = new SqlSessionFactoryBean();
		bean.setDataSource(ds);
		String loc = "mybatis/mybatis-config.xml";
		bean.setConfigLocation(new ClassPathResource(loc));
		return bean;
	}

	@Bean
	public SqlSessionTemplate sqlSessionTemplate(SqlSessionFactoryBean sfb) throws Exception {
		SqlSessionTemplate template = new SqlSessionTemplate(sfb.getObject());
		return template;

	}
}
