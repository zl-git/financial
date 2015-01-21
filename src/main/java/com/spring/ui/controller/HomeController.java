package com.spring.ui.controller;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.bo.system.Case;
import com.spring.bo.system.CaseCondition;
import com.spring.model.home.IHomeService;

@Controller
@RequestMapping(value = "/home")
public class HomeController {
	
	private IHomeService homeService;
	public void setHomeService(IHomeService homeService) {
		this.homeService = homeService;
	}
	
	/**
	 * 取出最新的10条案件记录
	 * 
	 * @return
	 * @since wangmin 2015/1/19
	 */
	@RequestMapping(value = "/index")
	public String index(Model model) {
		// 得到最新的10条案件信息
		model.addAttribute("cases", homeService.listLatestCases(10));
		return "home/index";
	}

	/**
	 * 添加案件
	 * 
	 * @return
	 * @since wangmin 2015/1/19
	 */
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String addByGet(Model model) {
		model.addAttribute(new Case());
		return "home/add";
	}

	/**
	 * 添加案件
	 * 
	 * @return
	 * @since wangmin 2015/1/19
	 */
	@RequestMapping(value = "add", method = RequestMethod.POST)
	public String addByPost(@Valid Case financialCase, BindingResult result) {
		homeService.addCase(financialCase);
		return "redirect:/home/index";
	}
	
	
	/**
	 * 修改案件
	 * @param id
	 * 		案件id，根据id得到案件对象
	 * @param model
	 * @return
	 * @since wangmin 2015/1/20
	 */
	@RequestMapping(value = "modify", method = RequestMethod.GET)
	public String modifyByGet(@RequestParam(value = "id") int id, 
			Model model) {
		model.addAttribute(homeService.get(id));
		return "home/modify";
	}
	
	/**
	 * 修改案件
	 * @param financialCase
	 * 		案件修改返回对象
	 * @param result
	 * @return
	 * @since wangmin 2015/1/20
	 */
	@RequestMapping(value = "modify", method = RequestMethod.POST)
	public String modifyByPost(@Valid Case financialCase, BindingResult result) {
		homeService.update(financialCase);
		return "redirect:/home/index";
	}
	
	/**
	 * 删除案件
	 * @param id
	 * 		案件id，根据id找到相应的案件并删除
	 * @return
	 * @since wangmin 2015/1/20
	 */
	@RequestMapping(value = "delete")
	public String delete(@RequestParam(value = "id") int id) {
		homeService.delete(id);
		return "redirect:/home/index";
	}
	
	/**
	 * 最新情况
	 * @param id
	 * @return
	 */
	@RequestMapping(value = "newest", method = RequestMethod.GET)
	public String newest(@RequestParam(value = "caseId") int caseId,
			Model model) {
		model.addAttribute("conditionList", homeService.getConditionByCaseId(caseId));
		CaseCondition caseCondition = new CaseCondition();
		caseCondition.setCaseId(caseId);
		model.addAttribute(caseCondition);
		return "/home/newest";
	}
	
	@RequestMapping(value = "newest", method = RequestMethod.POST)
	public String newest(@Valid CaseCondition caseCondition) {
		homeService.addCaseCondition(caseCondition);
		return "redirect:/home/newest?caseId="+caseCondition.getCaseId();
	}
	
	
	@RequestMapping(value = "/search")
	public String search() {
		return "home/search";
	}

	@RequestMapping(value = "/statistics")
	public String statistics() {
		return "home/statistics";
	}
}
