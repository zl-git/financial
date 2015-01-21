package com.spring.model.home;

import java.util.List;

import com.spring.bo.system.Case;
import com.spring.bo.system.CaseCondition;

public interface IHomeService {

	void addCase(Case financialCase);

	List<Case> listLatestCases(int num);
	
	Case get(int id);

	void update(Case financialCase);

	void delete(int valueOf);
	
	List<CaseCondition> getConditionByCaseId(int caseId);

	void addCaseCondition(CaseCondition caseCondition);
}
