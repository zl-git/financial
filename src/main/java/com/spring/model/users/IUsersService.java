package com.spring.model.users;

import java.util.List;

import com.spring.bo.system.Users;

public interface IUsersService {
	public void addNew(Users user);
	public List<Users> listAllObjects();
	public void deleteUserByName(String userName);
	public void updateUser(Users user);
	public Users findUserByUsername(String userName);
}