package com.spring.bo.system;

import java.util.Set;

/**
 * 行业类别实体类
 * 
 * @author TRS
 * 
 */
public class Industry {
	//private int industryId;
	private int id;
	private String industryName;
	private Set<Industry> industries;// 小类
	private Industry parentIndustry;// 大类


	/*public int getIndustryId() {
		return industryId;
	}

	public void setIndustryId(int industryId) {
		this.industryId = industryId;
	}*/
	public int getId() {
		return this.id;
	}
	
	public void setId(int id) {
		this.id = id;
	}

	public String getIndustryName() {
		return industryName;
	}

	public void setIndustryName(String industryName) {
		this.industryName = industryName;
	}


	public Set<Industry> getIndustries() {
		return industries;
	}

	public void setIndustries(Set<Industry> industries) {
		this.industries = industries;
	}

	public Industry getParentIndustry() {
		return parentIndustry;
	}

	public void setParentIndustry(Industry parentIndustry) {
		this.parentIndustry = parentIndustry;
	}

}
