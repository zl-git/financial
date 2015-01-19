package com.spring.ui.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/home")
public class HomeController {
	
	@RequestMapping(value="/index")
	public String index() {
		return "home/index";
	}
	
	@RequestMapping(value="/search")
	public String search() {
		return "home/search";
	}
	
	@RequestMapping(value="/statistics")
	public String statistics() {
		return "home/statistics";
	}
}
