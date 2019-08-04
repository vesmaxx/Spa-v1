package com.vesmax.service;

import java.util.List;

import com.vesmax.dao.UserDao;
import com.vesmax.dao.UserDaoimpl;
import com.vesmax.model.Users;

public class UserServiceimpl implements UserService {
	
	  UserDao userDao = new UserDaoimpl();
	
	@Override
	public List<Users> list() {
		// TODO Auto-generated method stub
		return userDao.list();
	}

	@Override
	public Users findById(int id) {
		// TODO Auto-generated method stub
		return userDao.findByID(id);
	}

	@Override
	public Boolean Update(Users Users) {
		// TODO Auto-generated method stub
		return userDao.Update(Users);
	}

	@Override
	public Boolean Create(Users Users) {
		// TODO Auto-generated method stub
		return userDao.Create(Users);
	}

	@Override
	public Boolean Delete(int id) {
		// TODO Auto-generated method stub
		return userDao.Delete(id);
	}

	@Override
	public Boolean checkLogin(String username, String password) {
		// TODO Auto-generated method stub
		return userDao.checkLogin(username, password);
	}
	
	

	
	
	
}
