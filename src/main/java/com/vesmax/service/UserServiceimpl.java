package com.vesmax.service;

import java.util.List;

import com.vesmax.dao.UserDao;
import com.vesmax.dao.UserDaoimpl;
import com.vesmax.model.Users;

public class UserServiceimpl implements UserService {
	
	  UserDao user = new UserDaoimpl();
	
	@Override
	public List<Users> list() {
		// TODO Auto-generated method stub
		return user.list();
	}

	@Override
	public Users findById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Users Update(Users Users) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Users Create(Users Users) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Users Delete(int id) {
		// TODO Auto-generated method stub
		return null;
	}
	
	

	
	
	
}
