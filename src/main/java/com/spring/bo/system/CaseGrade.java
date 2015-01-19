package com.spring.bo.system;

/**
 * 案件级别实体类
 * 
 * @author TRS
 * 
 */
public class CaseGrade {
	private int id;
	private String caseGradeName;// 案件级别

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCaseGradeName() {
		return caseGradeName;
	}

	public void setCaseGradeName(String caseGradeName) {
		this.caseGradeName = caseGradeName;
	}
}
