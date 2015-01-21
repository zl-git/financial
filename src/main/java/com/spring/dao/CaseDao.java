package com.spring.dao;

import com.spring.bo.system.Case;
import com.trs.dev4.jdk16.dao.IAccessor;
import com.trs.dev4.jdk16.dao.PagedList;
import com.trs.dev4.jdk16.dao.SearchFilter;

public class CaseDao {
	private IAccessor<Case> caseAccessor;

	public void setCaseAccessor(IAccessor<Case> caseAccessor) {
		this.caseAccessor = caseAccessor;
	}
	
	public void addNew(Case financialCase) {
		caseAccessor.insert(financialCase);
	}
	
	public PagedList<Case> orderByCases(String formDate, int i) {
		SearchFilter searchFilter = SearchFilter.getSearchFilter(0, i);
		searchFilter.setOrderBy(formDate);
		return caseAccessor.pagedObjects(searchFilter);
	}
	
	public Case get(int id) {
		return caseAccessor.findFirst("id", id);
	}
	
	public void update(Case object) {
		caseAccessor.update(object);
	}
	
	public void delete(Case object) {
		caseAccessor.delete(object);
	}
}
