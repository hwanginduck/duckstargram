package duckstargram.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import duckstargram.model.MemberBean;
import duckstargram.service.LoginService;

@Controller
public class LoginController {

	@Autowired
	private LoginService loginservice;
	
	@RequestMapping("loginform.do")
	public String loginform() {
		return "/login/loginform";
	}
	
//	아이디 찾기 폼
	@RequestMapping(value = "/find_id.do")
	public String find_id() {
		return "/find/find_id";
	}
	
//	아이디 찾기
	@RequestMapping("/find_id_ok.do")
	public String find_id_ok(@ModelAttribute MemberBean mem, HttpServletResponse response, Model model)
			throws Exception {
	
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		MemberBean member = loginservice.find_id(mem);
		
		return "";
		
	}
}
