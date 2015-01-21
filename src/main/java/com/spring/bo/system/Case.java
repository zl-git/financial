package com.spring.bo.system;

import java.io.Serializable;
import java.sql.Timestamp;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 案件实体类
 * @author TRS
 *
 */
@Entity
@Table(name = "`CASES`")
public class Case implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = -2689469070771947834L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	
	/**
	 * 集资项目名称
	 */
	private String caseName;
	/**
	 * 单位（个人）名称
	 */
	private String orgName;
	/**
	 * 所属行业
	 */
	private String industry;
	/**
	 * 集资方式
	 */
	private String raiseType;
	/**
	 * 业务类别
	 */
	private String serviceType;
	/**
	 * 业务明细
	 */
	private String serviceDetial;
	/**
	 * 集资金额
	 */
	private double raiseAmount;
	/**
	 * 参与人数
	 */
	private int raiseNum;
	/**
	 * 涉及地区
	 */
	private String involveArea; 
	/**
	 * 发案时间
	 */
	private Timestamp caseTime;
	/**
	 * 注册地
	 */
	private String registerArea;
	/**
	 * 案发地
	 */
	private String caseArea;
	/**
	 * 发现渠道
	 */
	private String channel;
	/**
	 * 案件级别
	 */
	private String caseGrade;
	/**
	 * 负责人
	 */
	private String chargeName;
	/**
	 * 填报人
	 */
	private String informant;
	/**
	 * 负责人电话
	 */
	private String contactNum;
	/**
	 * 填报日期
	 */
	private Timestamp formDate;
	
	
	/**
	 * 是否行政受理
	 */
	private boolean adminReceive;
	/**
	 * 是否行政处理
	 */
	private boolean adminHandle;
	/**
	 * 是否移送公安
	 */
	private boolean movePolice;
	/**
	 * 是否非法集资
	 */
	private boolean illegalRaise;
	
	
	/**
	 * 是否公安受理
	 */
	private boolean policeReceive;
	/**
	 * 公安立案
	 */
	private boolean policeRegister;
	/**
	 * 立案罪名
	 */
	private String crimeName;
	/**
	 * 是否侦查
	 */
	private boolean investigation;
	/**
	 * 是否起诉
	 */
	private boolean prosecute;
	/**
	 * 审判结果
	 */
	private String judgeResult;
	/**
	 * 认定罪名
	 */
	private String finalCrimeName;
	/**
	 * 获刑人数
	 */
	private int crimeNum;
	
	
	/**
	 * 是否司法审结
	 */
	private boolean judicial;
	/**
	 * 是否集资款清退完毕
	 */
	private boolean amountReturn;
	
	/**
	 * 返还比例
	 */
	private double rePercent;
	/**
	 * 上访维稳事件
	 */
	private String policeEvent;
	
	public String getCaseName() {
		return caseName;
	}
	public void setCaseName(String caseName) {
		this.caseName = caseName;
	}
	public String getOrgName() {
		return orgName;
	}
	public void setOrgName(String orgName) {
		this.orgName = orgName;
	}
	public String getIndustry() {
		return industry;
	}
	public void setIndustry(String industry) {
		this.industry = industry;
	}
	public String getRaiseType() {
		return raiseType;
	}
	public void setRaiseType(String raiseType) {
		this.raiseType = raiseType;
	}
	public String getServiceType() {
		return serviceType;
	}
	public void setServiceType(String serviceType) {
		this.serviceType = serviceType;
	}
	public String getServiceDetial() {
		return serviceDetial;
	}
	public void setServiceDetial(String serviceDetial) {
		this.serviceDetial = serviceDetial;
	}
	public double getRaiseAmount() {
		return raiseAmount;
	}
	public void setRaiseAmount(double raiseAmount) {
		this.raiseAmount = raiseAmount;
	}
	public int getRaiseNum() {
		return raiseNum;
	}
	public void setRaiseNum(int raiseNum) {
		this.raiseNum = raiseNum;
	}
	public String getInvolveArea() {
		return involveArea;
	}
	public void setInvolveArea(String involveArea) {
		this.involveArea = involveArea;
	}
	public Timestamp getCaseTime() {
		return caseTime;
	}
	public void setCaseTime(Timestamp caseTime) {
		this.caseTime = caseTime;
	}
	public String getRegisterArea() {
		return registerArea;
	}
	public void setRegisterArea(String registerArea) {
		this.registerArea = registerArea;
	}
	public String getCaseArea() {
		return caseArea;
	}
	public void setCaseArea(String caseArea) {
		this.caseArea = caseArea;
	}
	public String getChannel() {
		return channel;
	}
	public void setChannel(String channel) {
		this.channel = channel;
	}
	public String getCaseGrade() {
		return caseGrade;
	}
	public void setCaseGrade(String caseGrade) {
		this.caseGrade = caseGrade;
	}
	public String getChargeName() {
		return chargeName;
	}
	public void setChargeName(String chargeName) {
		this.chargeName = chargeName;
	}
	public String getInformant() {
		return informant;
	}
	public void setInformant(String informant) {
		this.informant = informant;
	}
	public String getContactNum() {
		return contactNum;
	}
	public void setContactNum(String contactNum) {
		this.contactNum = contactNum;
	}
	public Timestamp getFormDate() {
		return formDate;
	}
	public void setFormDate(Timestamp formDate) {
		this.formDate = formDate;
	}
	public boolean getAdminReceive() {
		return adminReceive;
	}
	public void setAdminReceive(boolean adminReceive) {
		this.adminReceive = adminReceive;
	}
	public boolean getAdminHandle() {
		return adminHandle;
	}
	public void setAdminHandle(boolean adminHandle) {
		this.adminHandle = adminHandle;
	}
	public boolean getMovePolice() {
		return movePolice;
	}
	public void setMovePolice(boolean movePolice) {
		this.movePolice = movePolice;
	}
	public boolean getIllegalRaise() {
		return illegalRaise;
	}
	public void setIllegalRaise(boolean illegalRaise) {
		this.illegalRaise = illegalRaise;
	}
	public boolean getPoliceReceive() {
		return policeReceive;
	}
	public void setPoliceReceive(boolean policeReceive) {
		this.policeReceive = policeReceive;
	}
	public boolean getPoliceRegister() {
		return policeRegister;
	}
	public void setPoliceRegister(boolean policeRegister) {
		this.policeRegister = policeRegister;
	}
	public String getCrimeName() {
		return crimeName;
	}
	public void setCrimeName(String crimeName) {
		this.crimeName = crimeName;
	}
	public boolean getInvestigation() {
		return investigation;
	}
	public void setInvestigation(boolean investigation) {
		this.investigation = investigation;
	}
	public boolean getProsecute() {
		return prosecute;
	}
	public void setProsecute(boolean prosecute) {
		this.prosecute = prosecute;
	}
	public String getJudgeResult() {
		return judgeResult;
	}
	public void setJudgeResult(String judgeResult) {
		this.judgeResult = judgeResult;
	}
	public String getFinalCrimeName() {
		return finalCrimeName;
	}
	public void setFinalCrimeName(String finalCrimeName) {
		this.finalCrimeName = finalCrimeName;
	}
	public int getCrimeNum() {
		return crimeNum;
	}
	public void setCrimeNum(int crimeNum) {
		this.crimeNum = crimeNum;
	}
	public boolean getJudicial() {
		return judicial;
	}
	public void setJudicial(boolean judicial) {
		this.judicial = judicial;
	}
	public boolean getAmountReturn() {
		return amountReturn;
	}
	public void setAmountReturn(boolean amountReturn) {
		this.amountReturn = amountReturn;
	}
	public double getRePercent() {
		return rePercent;
	}
	public void setRePercent(double rePercent) {
		this.rePercent = rePercent;
	}
	public String getPoliceEvent() {
		return policeEvent;
	}
	public void setPoliceEvent(String policeEvent) {
		this.policeEvent = policeEvent;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	@Override
	public String toString() {
		return "Case [id=" + id + ", caseName=" + caseName + ", orgName="
				+ orgName + ", industry=" + industry + ", raiseType="
				+ raiseType + ", serviceType=" + serviceType
				+ ", serviceDetial=" + serviceDetial + ", raiseAmount="
				+ raiseAmount + ", raiseNum=" + raiseNum + ", involveArea="
				+ involveArea + ", caseTime=" + caseTime + ", registerArea="
				+ registerArea + ", caseArea=" + caseArea + ", channel="
				+ channel + ", caseGrade=" + caseGrade + ", chargeName="
				+ chargeName + ", informant=" + informant + ", contactNum="
				+ contactNum + ", formDate=" + formDate + ", adminReceive="
				+ adminReceive + ", adminHandle=" + adminHandle
				+ ", movePolice=" + movePolice + ", illegalRaise="
				+ illegalRaise + ", policeReceive=" + policeReceive
				+ ", policeRegister=" + policeRegister + ", crimeName="
				+ crimeName + ", investigation=" + investigation
				+ ", prosecute=" + prosecute + ", judgeResult=" + judgeResult
				+ ", finalCrimeName=" + finalCrimeName + ", crimeNum="
				+ crimeNum + ", judicial=" + judicial + ", amountReturn="
				+ amountReturn + ", rePercent=" + rePercent + ", policeEvent="
				+ policeEvent + "]";
	}
}
