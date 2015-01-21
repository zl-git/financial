package com.spring.bo.system;

import java.io.Serializable;
import java.sql.Timestamp;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 案件最新情况
 * @author TRS
 *
 */
@Entity
@Table(name = "`CASECONDITION`")
public class CaseCondition implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 2999725571030563957L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	
	/**
	 * 最新情况对应的案件id
	 */
	private int caseId;
	/**
	 * 案情
	 */
	private String caseCondition;
	/**
	 * 涉案人员
	 */
	private String crimePopele;
	/**
	 * 起诉和审判工作进展
	 */
	private String caseProgress;
	/**
	 * 资产追缴
	 */
	private double moneyRecovered;
	/**
	 * 善后清退
	 */
	private double moneyReturn;
	/**
	 * 涉稳维稳
	 */
	private String involvSafety;
	/**
	 * 当前主要问题
	 */
	private String problem;
	/**
	 * 工作进展
	 */
	private String workProgress;
	/**
	 * 填报人
	 */
	private String informant;
	/**
	 * 电话号码
	 */
	private String phoneNum; 
	/**
	 * 填报日期
	 */
	private Timestamp formDate;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getCaseId() {
		return caseId;
	}
	public void setCaseId(int caseId) {
		this.caseId = caseId;
	}
	public String getCaseCondition() {
		return caseCondition;
	}
	public void setCaseCondition(String caseCondition) {
		this.caseCondition = caseCondition;
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
	public String getInformant() {
		return informant;
	}
	public void setInformant(String informant) {
		this.informant = informant;
	}
	public String getPhoneNum() {
		return phoneNum;
	}
	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}
	public Timestamp getFormDate() {
		return formDate;
	}
	public void setFormDate(Timestamp formDate) {
		this.formDate = formDate;
	}
	public String getInvolvSafety(){
		return this.involvSafety;
	}
	public void setInvolvSafety(String involvSafety) {
		this.involvSafety = involvSafety;
	}
}
