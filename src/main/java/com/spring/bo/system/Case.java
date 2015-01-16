package com.spring.bo.system;

import java.sql.Date;
/**
 * 案件实体类
 * @author TRS
 *
 */
public class Case {
	private int id;
	private String projectName;// 项目名称
	private String dname;// 单位名称
	private Industry industry;// 所属行业
	private RaiseType raiseType;// 集资方式
	private ServiceType serviceType;// 业务类别
	private double raiseAmount;// 集资金额
	private int pnum;// 参与人数
	private String area; // 设计地区
	private Date incidenceTime;// 发案时间
	private String regArea;// 注册地
	private String CaseArea;// 案发地
	private Channel channel;// 发现渠道
	private CaseGrade caseGrade;// 案件级别
	private String chargeName;// 负责人
	private String informant;// 填报人
	private String chargePhoNo;// 负责人电话
	private Date formDate;// 填报日期
	
	private int administrative;//是否行政受理
	private Date atime;//行政受理时间
	private int adeal;//行政处理
	private int toPolice;//是否移送公安
	private int illegalRaise;//是否非法集资
	
	private int pAccept;//公安受理
	private int pRegister; //公安立案
	private String crimeName;//立案罪名
	private int investigation;//是否侦查
	private int prosecute;//起诉
	private String result;//审判结果
	private String finalCrimeName;//认定罪名
	private int crimeNum;//获刑人数
	
	private int judicial;//司法审结
	private Date judicialDate;//司法审结时间
	private int amountReturn;//集资款清退完毕
	private Date returnTime;//清退完毕时间
	
	private double rePercent;//返还比例
	private String event;//上访维稳事件
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getProjectName() {
		return projectName;
	}
	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}
	public String getDname() {
		return dname;
	}
	public void setDname(String dname) {
		this.dname = dname;
	}
	public Industry getIndustry() {
		return industry;
	}
	public void setIndustry(Industry industry) {
		this.industry = industry;
	}
	public RaiseType getRaiseType() {
		return raiseType;
	}
	public void setRaiseType(RaiseType raiseType) {
		this.raiseType = raiseType;
	}
	public ServiceType getServiceType() {
		return serviceType;
	}
	public void setServiceType(ServiceType serviceType) {
		this.serviceType = serviceType;
	}
	public double getRaiseAmount() {
		return raiseAmount;
	}
	public void setRaiseAmount(double raiseAmount) {
		this.raiseAmount = raiseAmount;
	}
	public int getPnum() {
		return pnum;
	}
	public void setPnum(int pnum) {
		this.pnum = pnum;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public Date getIncidenceTime() {
		return incidenceTime;
	}
	public void setIncidenceTime(Date incidenceTime) {
		this.incidenceTime = incidenceTime;
	}
	public String getRegArea() {
		return regArea;
	}
	public void setRegArea(String regArea) {
		this.regArea = regArea;
	}
	public String getCaseArea() {
		return CaseArea;
	}
	public void setCaseArea(String caseArea) {
		CaseArea = caseArea;
	}
	public Channel getChannel() {
		return channel;
	}
	public void setChannel(Channel channel) {
		this.channel = channel;
	}
	public CaseGrade getCaseGrade() {
		return caseGrade;
	}
	public void setCaseGrade(CaseGrade caseGrade) {
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
	public String getChargePhoNo() {
		return chargePhoNo;
	}
	public void setChargePhoNo(String chargePhoNo) {
		this.chargePhoNo = chargePhoNo;
	}
	public Date getFormDate() {
		return formDate;
	}
	public void setFormDate(Date formDate) {
		this.formDate = formDate;
	}
	public int getAdministrative() {
		return administrative;
	}
	public void setAdministrative(int administrative) {
		this.administrative = administrative;
	}
	public Date getAtime() {
		return atime;
	}
	public void setAtime(Date atime) {
		this.atime = atime;
	}
	public int getAdeal() {
		return adeal;
	}
	public void setAdeal(int adeal) {
		this.adeal = adeal;
	}
	public int getToPolice() {
		return toPolice;
	}
	public void setToPolice(int toPolice) {
		this.toPolice = toPolice;
	}
	public int getIllegalRaise() {
		return illegalRaise;
	}
	public void setIllegalRaise(int illegalRaise) {
		this.illegalRaise = illegalRaise;
	}
	public int getpAccept() {
		return pAccept;
	}
	public void setpAccept(int pAccept) {
		this.pAccept = pAccept;
	}
	public int getpRegister() {
		return pRegister;
	}
	public void setpRegister(int pRegister) {
		this.pRegister = pRegister;
	}
	public String getCrimeName() {
		return crimeName;
	}
	public void setCrimeName(String crimeName) {
		this.crimeName = crimeName;
	}
	public int getInvestigation() {
		return investigation;
	}
	public void setInvestigation(int investigation) {
		this.investigation = investigation;
	}
	public int getProsecute() {
		return prosecute;
	}
	public void setProsecute(int prosecute) {
		this.prosecute = prosecute;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
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
	public int getJudicial() {
		return judicial;
	}
	public void setJudicial(int judicial) {
		this.judicial = judicial;
	}
	public Date getJudicialDate() {
		return judicialDate;
	}
	public void setJudicialDate(Date judicialDate) {
		this.judicialDate = judicialDate;
	}
	public int getAmountReturn() {
		return amountReturn;
	}
	public void setAmountReturn(int amountReturn) {
		this.amountReturn = amountReturn;
	}
	public Date getReturnTime() {
		return returnTime;
	}
	public void setReturnTime(Date returnTime) {
		this.returnTime = returnTime;
	}
	public double getRePercent() {
		return rePercent;
	}
	public void setRePercent(double rePercent) {
		this.rePercent = rePercent;
	}
	public String getEvent() {
		return event;
	}
	public void setEvent(String event) {
		this.event = event;
	}
	
	
	
	
}
