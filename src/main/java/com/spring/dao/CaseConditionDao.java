package com.spring.dao;

import java.util.List;

import com.spring.bo.system.CaseCondition;
import com.trs.dev4.jdk16.dao.IAccessor;
import com.trs.dev4.jdk16.dao.SearchFilter;

public class CaseConditionDao {
	
	private IAccessor<CaseCondition> caseConditionAccessor;

	public void setCaseConditionAccessor(
			IAccessor<CaseCondition> caseConditionAccessor) {
		this.caseConditionAccessor = caseConditionAccessor;
	}
	
	public List<CaseCondition> listObjects(String fieldName, String value) {
		return caseConditionAccessor.listObjects(fieldName, value);
	}
	
	public List<CaseCondition> listObjects(SearchFilter sf) {
		return caseConditionAccessor.listObjects(sf);
	}
	
	public void addNew(CaseCondition caseCondition) {
		caseConditionAccessor.insert(caseCondition);
	}
}
