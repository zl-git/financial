package com.spring.ui.controller;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.bo.system.Users;
import com.spring.model.users.IUsersService;

@Controller
@RequestMapping(value = "/admin")
public class AdminController {
	private IUsersService usersService;

	public void setUsersService(IUsersService usersService) {
		this.usersService = usersService;
	}

	@RequestMapping(value = "/users")
	public String users(Map<String, Object> model) {
		List<Users> users = usersService.listAllObjects();
		model.put("users", users);
		return "admin/users";
	}

/*	@RequestMapping(value = "/users/add")
	public String addUser(String username, String password) {
		Users user = new Users();
		user.setUserName(username);
		user.setPassWord(password);
		user.setRole("ROLE_OPERATE");
		usersService.addNew(user);
		return "admin/users";
	}
*/
	@ResponseBody
	@RequestMapping(value = "/users/update")
	public String updateUser(String oldUsername, String username,
			String password) {
		Users isExsit = usersService.findUserByUsername(username);
		if(isExsit!=null){
			return "true";
		}
		if ("".equals(oldUsername)) {
			Users user = new Users();
			user.setUserName(username);
			user.setPassWord(password);
			user.setRole("ROLE_OPERATE");
			usersService.addNew(user);
		} else {
			Users user = usersService.findUserByUsername(oldUsername);
			user.setUserName(username);
			user.setPassWord(password);
			usersService.updateUser(user);
			
		}
		return "false";
	}
	@RequestMapping(value = "/users/del")
	public String updateUser(String userName) {
		usersService.deleteUserByName(userName);
		return "admin/users";
	}

	@RequestMapping(value = "/labels")
	public String labels() {
		return "admin/labels";
	}

}
