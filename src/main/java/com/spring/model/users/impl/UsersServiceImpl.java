package com.spring.model.users.impl;

import java.util.List;

import com.spring.bo.system.Users;
import com.spring.dao.UsersDao;
import com.spring.model.users.IUsersService;
import com.spring.util.Const;

public class UsersServiceImpl implements IUsersService {
	
	private UsersDao usersDao;
	public void setUsersDao(UsersDao usersDao) {
		this.usersDao = usersDao;
	}

	public void initialize() {
		createUser(Const.ADMIN_USERNAME, Const.ADMIN_PASSWORD, Const.ROLE_ADMIN);
	}

	@Override
	public void addNew(Users user) {
		usersDao.addNew(user);
	}

	
	@Override
	public List<Users> listAllObjects() {
		return usersDao.listAllObjects();
	}

	@Override
	public void deleteUserByName(String userName) {
		usersDao.deleteUserByName(userName);
	}

	private void createUser(String userName, String passWord, String role) {
		if (usersDao.findFirst("username",userName) == null) {
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
