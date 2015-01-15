package com.spring.model.system.impl;

import java.util.List;

import com.spring.bo.system.IndexPage;
import com.spring.model.system.IPlatformService;
import com.trs.dev4.jdk16.dao.IAccessor;

public class PlatformServiceImpl implements IPlatformService {

	private IAccessor<IndexPage> indexPageDao;

	public void setIndexPageDao(IAccessor<IndexPage> indexPageDao) {
		this.indexPageDao = indexPageDao;
	}

	@Override
	public List<IndexPage> getIndexPage(String userRole) {
		return indexPageDao.listObjects("userRole", userRole);
	}

}
