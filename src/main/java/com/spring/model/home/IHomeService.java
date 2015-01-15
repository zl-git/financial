package com.spring.model.home;

import javax.servlet.http.HttpServletRequest;

public interface IHomeService {
	public String getUserName(HttpServletRequest request);
	public String getDefaultPath(String userName);
	public String getUserRole(String userName);
}