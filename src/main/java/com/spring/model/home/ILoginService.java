package com.spring.model.home;

import javax.servlet.http.HttpServletRequest;

public interface ILoginService {
	public String getUserName(HttpServletRequest request);
	public String getUserRole(String userName);
}
