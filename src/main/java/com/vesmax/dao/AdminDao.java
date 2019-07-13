package com.vesmax.dao;

import java.util.List;

import com.vesmax.model.Admins;

public interface AdminDao {
	List<Admins> list();
	
	Admins findByID(int id);
	
	Admins Update(Admins admin);
	
	Admins Create(Admins admin);
	
	Admins Delete(int id);
	

}
