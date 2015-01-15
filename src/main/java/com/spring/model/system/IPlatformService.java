package com.spring.model.system;

import java.util.List;

import com.spring.bo.system.IndexPage;

public interface IPlatformService {
	public List<IndexPage> getIndexPage(String userRole);
}
