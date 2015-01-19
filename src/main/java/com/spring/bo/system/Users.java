package com.spring.bo.system;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 用户主表
 * @author wangmin
 *
 */
@Entity
@Table(name = "`USERS`")
public class Users implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -4940056886281847878L;

	@Id
	@Column(name = "`ID`")
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;

	@Column(name = "`USERNAME`")
	private String userName;

	@Column(name = "`PASSWORD`")
	private String passWord;

	@Column(name = "`ROLE`")
	private String role;

	public int getId() {
		return id;
	}

	public void setId(int id) {
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

	public Users(int id, String userName, String passWord, String role) {
		super();
		this.id = id;
		this.userName = userName;
		this.passWord = passWord;
		this.role = role;
	}

	public Users() {

	}
}
