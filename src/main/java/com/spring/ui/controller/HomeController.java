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
		if (userName == null) {
			return "redirect:/login";
		}
		return "redirect:" + homeService.getDefaultPath(userName);
	}

	@RequestMapping(value = "/login")
	public String login() {
		return "login";
	}

	@RequestMapping(value = "/admin/index")
	public String admin() {
		return "admin/index";
	}

	@RequestMapping(value = "/check/index")
	public String check() {
		return "check/index";
	}
}
