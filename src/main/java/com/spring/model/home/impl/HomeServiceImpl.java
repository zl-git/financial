package com.spring.model.home.impl;

import java.util.ArrayList;
import java.util.List;

import com.spring.bo.system.Case;
import com.spring.bo.system.CaseCondition;
import com.spring.dao.CaseConditionDao;
import com.spring.dao.CaseDao;
import com.spring.model.home.IHomeService;
import com.trs.dev4.jdk16.dao.PagedList;
import com.trs.dev4.jdk16.dao.SearchFilter;

public class HomeServiceImpl implements IHomeService{
	
	private CaseDao caseDao;
	private CaseConditionDao caseConditionDao;
	
	public void setCaseDao(CaseDao caseDao) {
		this.caseDao = caseDao;
	}
	
	public void setCaseConditionDao(CaseConditionDao caseConditionDao) {
		this.caseConditionDao = caseConditionDao;
	}

	@Override
	public void addCase(Case financialCase) {
		caseDao.addNew(financialCase);
	}

	@Override
	public List<Case> listLatestCases(int num) {
		PagedList<Case> pagedList = caseDao.orderByCases("formDate DESC", num);
		List<Case> listCases = new ArrayList<Case>();
		if (pagedList != null && pagedList.size() > 0) {
			for (int i = 0; i < pagedList.size(); i++) {
				listCases.add(pagedList.get(i));
			}
		}
		return listCases;
	}

	@Override
	public Case get(int id) {
		return caseDao.get(id);
	}

	@Override
	public void update(Case financialCase) {
		caseDao.update(financialCase);
	}

	@Override
	public void delete(int id) {
		caseDao.delete(caseDao.get(id));
	}

	@Override
	public List<CaseCondition> getConditionByCaseId(int caseId) {
		SearchFilter sf = SearchFilter.getNoPagedFilter();
		sf.addEqCondition("caseId", caseId);
		return caseConditionDao.listObjects(sf);
	}

	@Override
	public void addCaseCondition(CaseCondition caseCondition) {
		caseConditionDao.addNew(caseCondition);
	}

}
