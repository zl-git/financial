package com.spring.model.home.impl;

import javax.servlet.http.HttpServletRequest;

import org.springframework.security.core.context.SecurityContextImpl;

import com.spring.bo.system.Users;
import com.spring.model.home.IHomeService;
import com.trs.dev4.jdk16.dao.IAccessor;

public class HomeServiceImpl implements IHomeService {
	
	private IAccessor<Users> usersDao;
	public void setUsersDao(IAccessor<Users> usersDao) {
		this.usersDao = usersDao;
	}
	
	@Override
	public String getUserName(HttpServletRequest request) {
		String username = null;
		SecurityContextImpl securityContextImpl = (SecurityContextImpl) request
				.getSession().getAttribute("SPRING_SECURITY_CONTEXT");
		if (securityContextImpl != null) {
			username = securityContextImpl.getAuthentication().getName();
		}
		return username;
	}

	@Override
	public String getDefaultPath(String userName) {
		Users user = usersDao.findFirst("username", userName);
		return user.getDefaultPath();
	}

	@Override
	public String getUserRole(String userName) {
		Users user = usersDao.findFirst("username", userName);
		return user.getRole();
	}

}
