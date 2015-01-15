package com.spring.bo.system;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="INDEXPAGE")
public class IndexPage implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 7775478212371513195L;
	@Id
	@Column(name="ID")
	private String id;
	@Column(name="`NAME`")
	private String name;
	@Column(name="`URL`")
	private String url;
	@Column(name="`TARGET`")
	private String target;
	@Column(name="`USERROLE`")
	private String userRole;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getTarget() {
		return target;
	}
	public void setTarget(String target) {
		this.target = target;
	}
	public String getUserRole() {
		return userRole;
	}
	public void setUserRole(String userRole) {
		this.userRole = userRole;
	}
	
}
