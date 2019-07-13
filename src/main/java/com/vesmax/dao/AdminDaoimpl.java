package com.vesmax.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.vesmax.model.Admins;

public class AdminDaoimpl implements AdminDao {
	
	
	private final SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();

	@Override
	@SuppressWarnings("unchecked")
	public List<Admins> list() {
		Session session = sessionFactory.openSession();
		List<Admins> list = session.createQuery("From Admins").list();
		return list;
	}

	@Override
	public Admins findByID(int id) {
		try {
			Session session = sessionFactory.openSession();
			Admins admins = (Admins) session.get(Admins.class, id);
			return admins;
		} catch (Exception e) {
			System.out.println(e);
			return null;
		}
		
	}

	@Override
	public Admins Update(Admins admin) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Admins Create(Admins admin) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Admins Delete(int id) {
		// TODO Auto-generated method stub
		return null;
	}

}
