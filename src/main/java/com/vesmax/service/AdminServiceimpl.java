package com.vesmax.service;

import java.util.List;

import com.vesmax.dao.AdminDao;
import com.vesmax.dao.AdminDaoimpl;
import com.vesmax.model.Admins;

public class AdminServiceimpl implements AdminService {
	
	 AdminDao adminDao = new AdminDaoimpl();
	
	public List<Admins> list() {
		// TODO Auto-generated method stub
		return adminDao.list();
	}

	public Admins findByID(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	public Admins Update(Admins admin) {
		// TODO Auto-generated method stub
		return null;
	}

	public Admins Create(Admins admin) {
		// TODO Auto-generated method stub
		return null;
	}

	public Admins Delete(int id) {
		// TODO Auto-generated method stub
		return adminDao.findByID(id);
	}

}
