package com.spring.ui.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping(value = "/clean")
public class CleanController {
	@RequestMapping(value = "/index")
	public String clean() {
		return "clean/index";
	}

	@RequestMapping(value = "/search")
	public String search(@RequestParam(value = "dateStart") String dateStart,
			@RequestParam(value = "dateEnd") String dateEnd) {
		return "clean/index";
	}
	
	@RequestMapping(value = "/push")
	public String push() {
		return "clean/push";
	}
}
