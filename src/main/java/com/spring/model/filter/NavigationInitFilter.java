package com.spring.model.filter;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import org.springframework.web.filter.GenericFilterBean;

import com.spring.model.home.IHomeService;
import com.spring.model.system.IPlatformService;
import com.spring.util.Const;

public class NavigationInitFilter extends GenericFilterBean {
	private IHomeService homeService;
	private IPlatformService platformService;
	
	public void setHomeService(IHomeService homeService) {
		this.homeService = homeService;
	}
	public void setPlatformService(IPlatformService platformService) {
		this.platformService = platformService;
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		String userName = homeService.getUserName((HttpServletRequest) request);
		String userRole = homeService.getUserRole(userName);
		request.setAttribute(Const.HTTP_REQUEST_ATTR_USERNAME, userName);
		request.setAttribute(Const.HTTP_REQUEST_ATTR_NAVIGATION, platformService.getIndexPage(userRole));
		chain.doFilter(request, response);
	}

}
