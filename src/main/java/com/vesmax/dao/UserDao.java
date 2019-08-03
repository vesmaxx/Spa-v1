package com.vesmax.dao;

import java.util.List;

import com.vesmax.model.Users;

public interface UserDao {
	
	List<Users> list();
	
	Users findByID(int id);
	
	Boolean Update(Users user);
	
	Boolean Create(Users user);
	
	Boolean Delete(int id);

}
