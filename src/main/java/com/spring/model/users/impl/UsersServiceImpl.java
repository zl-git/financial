package com.spring.model.users.impl;

import java.util.List;

import com.spring.bo.system.Users;
import com.spring.model.users.IUsersService;
import com.spring.util.Const;
import com.trs.dev4.jdk16.dao.IAccessor;

public class UsersServiceImpl implements IUsersService {
	private IAccessor<Users> usersDao;

	public void setUsersDao(IAccessor<Users> usersDao) {
		this.usersDao = usersDao;
	}

	public void initialize() {
		createUser(Const.ADMIN_USERNAME, Const.ADMIN_PASSWORD, Const.ROLE_ADMIN);
	}

	@Override
	public void addNew(Users user) {
		usersDao.insert(user);
	}

	
	@Override
	public List<Users> listAllObjects() {
		return usersDao.listObjects();
	}

	@Override
	public void deleteUserByName(String userName) {
		Users user = usersDao.findFirst("username", userName);
		usersDao.delete(user);
	}

	private void createUser(String userName, String passWord, String role) {
		if (usersDao.findFirst("username", userName) == null) {
			Users user = new Users();
			user.setUserName(userName);
			user.setPassWord(passWord);
			user.setRole(role);
			addNew(user);
		}
	}

	@Override
	public void updateUser(Users user) {
		usersDao.update(user);
	}
	
	public Users findUserByUsername(String userName){
		return usersDao.findFirst("username",userName);
	}
	
}
