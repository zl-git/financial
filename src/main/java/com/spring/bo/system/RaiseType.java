package com.spring.bo.system;

/**
 * 集资方式实体类
 * 
 * @author TRS
 * 
 */
public class RaiseType {
	private int id;
	private String raiseName;// 集资方式

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getRaiseName() {
		return raiseName;
	}

	public void setRaiseName(String raiseName) {
		this.raiseName = raiseName;
	}
}
