package com.neo.spring.security.api;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;

@SpringBootApplication
public class SpringBootSecurityDemoApplication {
	//@Autowired
	//DataSource datsource;

	public static void main(String[] args) {
		ConfigurableApplicationContext ctx = SpringApplication.run(SpringBootSecurityDemoApplication.class, args);
		//System.out.println(ctx.getBean(DataSource.class).getClass().getName());
	}

}
