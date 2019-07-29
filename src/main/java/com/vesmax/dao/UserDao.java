package com.vesmax.dao;

import java.util.List;

import com.vesmax.model.Users;

public interface UserDao {
	
	List<Users> list();
	
	Users findByID(int id);
	
	Users Update(Users user);
	
	Users Create(Users user);
	
	Boolean Delete(int id);

}
