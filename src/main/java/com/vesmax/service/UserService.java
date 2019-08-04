package com.vesmax.service;

import java.util.List;

import com.vesmax.model.Users;

public interface UserService {
	List<Users> list();

	Users findById(int id);

	Boolean Update(Users Users);

	Boolean Create(Users Users);

	Boolean Delete(int id);

}
