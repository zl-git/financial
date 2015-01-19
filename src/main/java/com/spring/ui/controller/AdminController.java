package com.spring.ui.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/admin")
public class AdminController {
	
	@RequestMapping(value="/users")
	public String users() {
		return "admin/users";
	}
	
	@RequestMapping(value="/labels")
	public String labels() {
		return "admin/labels";
	}
	
}
