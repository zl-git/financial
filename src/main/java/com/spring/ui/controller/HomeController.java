package com.spring.ui.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/home")
public class HomeController {
	
	/**
	 * 取出最新的10条案件记录
	 * @return
	 * @since wangmin 2015/1/19
	 */
	@RequestMapping(value="/index")
	public String index() {
		return "home/index";
	}
	
	/**
	 * 添加案件
	 * @return
	 * @since wangmin 2015/1/19
	 */
	@RequestMapping(value="/add", method=RequestMethod.GET)
	public String addByGet() {
		return "home/add";
	}
	
	/**
	 * 添加案件
	 * @return
	 * @since wangmin 2015/1/19
	 */
	@RequestMapping(value="add", method=RequestMethod.POST)
	public String addByPost() {
		return "redirect:/home/index";
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
