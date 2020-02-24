package com.neo.spring.security.api.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class LoginController {
	
	@Autowired
	private PasswordEncoder passwordEncoder;
	

	@GetMapping("/loginPage")
	public String showLoginPage() {
		return "loginView";
	}
	
	@GetMapping("/home")
	public String landingDashboard() {
		return "welcome";
	}
	
	@GetMapping("/getEncPwd")
	public @ResponseBody String getEncPwd(@RequestParam String plainpassword) {
		return passwordEncoder.encode(plainpassword);
	}
}
