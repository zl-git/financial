package com.spring.ui.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.model.login.ILoginService;

@Controller
public class LoginController {

	private ILoginService loginService;

	public void setLoginService(ILoginService loginService) {
		this.loginService = loginService;
	}

	@RequestMapping(value = "/")
	public String login(HttpServletRequest request) {
		String userName = loginService.getUserName(request);
		if (userName == null) {
			return "redirect:/login";
		}
		return "redirect:/home/index";
	}

	@RequestMapping(value = "/login")
	public String login() {
		return "login";
	}
}
