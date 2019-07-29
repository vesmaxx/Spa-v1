package com.vesmax.service;

import java.util.List;

import com.vesmax.model.Users;

public interface UserService {
List<Users> list();
	
Users findById(int id);
	
Users Update(Users Users);
	
Users Create(Users Users);
	
Users Delete(int id);

}
