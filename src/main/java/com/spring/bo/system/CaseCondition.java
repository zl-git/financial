package com.spring.bo.system;

/**
 * 案件最新情况
 * @author TRS
 *
 */
public class CaseCondition {
	private int id;
	private Case cases;//案件
	private String crimePopele;//涉案人员
	private String caseProgress;//起诉和审判工作进展
	private double moneyRecovered;//资产追缴
	private double moneyReturn;//善后清退
	private String problem;//当前主要问题
	private String workProgress;//工作进展
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCrimePopele() {
		return crimePopele;
	}
	public void setCrimePopele(String crimePopele) {
		this.crimePopele = crimePopele;
	}
	public String getCaseProgress() {
		return caseProgress;
	}
	public void setCaseProgress(String caseProgress) {
		this.caseProgress = caseProgress;
	}
	public double getMoneyRecovered() {
		return moneyRecovered;
	}
	public void setMoneyRecovered(double moneyRecovered) {
		this.moneyRecovered = moneyRecovered;
	}
	public double getMoneyReturn() {
		return moneyReturn;
	}
	public void setMoneyReturn(double moneyReturn) {
		this.moneyReturn = moneyReturn;
	}
	public String getProblem() {
		return problem;
	}
	public void setProblem(String problem) {
		this.problem = problem;
	}
	public String getWorkProgress() {
		return workProgress;
	}
	public void setWorkProgress(String workProgress) {
		this.workProgress = workProgress;
	}
	public Case getCases() {
		return cases;
	}
	public void setCases(Case cases) {
		this.cases = cases;
	}
	
}
