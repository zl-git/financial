package com.spring.bo.system;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="`USERS`")
public class Users implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -4940056886281847878L;
	
	@Id
	@Column(name = "`ID`")
	private String id;
	
	@Column(name = "`USERNAME`")
	private String userName;
	
	@Column(name = "`PASSWORD`")
	private String passWord;
	
	@Column(name = "`ROLE`")
	private String role;
	
	@Column(name = "`DEFAULTPATH`")
	private String defaultPath;
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassWord() {
		return passWord;
	}

	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getDefaultPath() {
		return defaultPath;
	}

	public void setDefaultPath(String defaultPath) {
		this.defaultPath = defaultPath;
	}

	public Users(String id, String userName, String passWord, String role,
			String defaultPath) {
		super();
		this.id = id;
		this.userName = userName;
		this.passWord = passWord;
		this.role = role;
		this.defaultPath = defaultPath;
	}
	public Users() {
		
	}
}
