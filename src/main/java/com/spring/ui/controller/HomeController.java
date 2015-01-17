package com.spring.ui.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.model.home.IHomeService;

@Controller
public class HomeController {

	private IHomeService homeService;

	public void setHomeService(IHomeService homeService) {
		this.homeService = homeService;
	}

	@RequestMapping(value = "/")
	public String home(HttpServletRequest request) {
		String userName = homeService.getUserName(request);
		System.out.println("userName = " + userName);
		if (userName == null) {
			return "redirect:/login";
		}
		//return "redirect:" + homeService.getDefaultPath(userName);
		return "index";
	}

	@RequestMapping(value = "/login")
	public String login() {
		return "login";
	}
}
