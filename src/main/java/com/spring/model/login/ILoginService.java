package com.spring.model.login;

import javax.servlet.http.HttpServletRequest;

public interface ILoginService {
	public String getUserName(HttpServletRequest request);
	public String getUserRole(String userName);
}
