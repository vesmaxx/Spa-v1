package com.vesmax.service;

import java.util.List;

import com.vesmax.model.Admins;

public interface AdminService {
	
	List<Admins> list();
	
	Admins findByID(int id);
	
	Admins Update(Admins admin);
	
	Admins Create(Admins admin);
	
	Admins Delete(int id);

}
