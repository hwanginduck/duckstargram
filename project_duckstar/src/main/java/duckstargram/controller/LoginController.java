package duckstargram.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import duckstargram.service.LoginService;

@Controller
public class LoginController {

	@Autowired
	private LoginService loginservice;
	
	@RequestMapping("loginform.do")
	public String loginform() {
		return "/login/loginform";
	}
	
}
