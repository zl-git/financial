package com.spring.dao;

import java.util.List;

import com.spring.bo.system.Users;
import com.trs.dev4.jdk16.dao.IAccessor;

public class UsersDao {
	private IAccessor<Users> usersAccessor;

	public void setUsersAccessor(IAccessor<Users> usersAccessor) {
		this.usersAccessor = usersAccessor;
	}
	
	public void addNew(Users user) {
		usersAccessor.insert(user);
	}
	
	public List<Users> listAllObjects() {
		return usersAccessor.listObjects();
	}
	
	public void deleteUserByName(String userName) {
		Users user = findFirst("username", userName);
		usersAccessor.delete(user);
	}
	
	public Users findFirst(String field, String value) {
		return usersAccessor.findFirst(field, value);
	}
	
	public void update(Users user) {
		usersAccessor.update(user);
	}
}
