package com.vesmax.service;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.vesmax.model.Staffs;
import com.vesmax.dao.StaffDao;

public class StaffServiceimpl implements StaffService {
	
	private final SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
    
	@SuppressWarnings("unchecked")
	public List<Staffs> list() {
		Session session = sessionFactory.openSession();
		session.getTransaction().begin();
		List<Staffs> list = session.createQuery("From Services").list();
		session.getTransaction().commit();
		session.close();
		return list;
	}

	public Staffs findById(int id) {
		Session session = sessionFactory.openSession();
		try {
			return (Staffs) session.get(Staffs.class, id);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}finally {
			session.close();
		}
	}

	public boolean Update(Staffs staffs) {
		Session session = sessionFactory.openSession();
		try {
			session.getTransaction().begin();
			session.update(staffs);
			session.getTransaction().commit();
			return true;
		} catch (Exception e) {
			if (session.getTransaction() != null) {
				session.getTransaction().rollback();
			}
			return false;
		} finally {
			session.close();
		}
	}

	public boolean Create(Staffs staffs) {
		Session session = sessionFactory.openSession();
		try {
			session.getTransaction().begin();
			session.save(staffs);
			session.getTransaction().commit();
			return true;
		} catch (Exception e) {
			if (session.getTransaction() != null) {
				session.getTransaction().rollback();
			}
			return false;
		} finally {
			session.close();
		}
	}

	public boolean Delete(Staffs staffs) {
		Session session = sessionFactory.openSession();
		try {
			session.getTransaction().begin();
			session.delete	(staffs);
			session.getTransaction().commit();
			return true;
		} catch (Exception e) {
			if (session.getTransaction() != null) {
				session.getTransaction().rollback();
			}
			return false;
		} finally {
			session.close();
		}
	}

	

}

