package com.vesmax.service;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.vesmax.model.Services;

import com.vesmax.dao.ServiceDao;

public class ServiceServiceimpl implements ServiceService {
	private final SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
	
	@SuppressWarnings("unchecked")
	public List<Services> list() {
		Session session = sessionFactory.openSession();
		session.getTransaction().begin();
		List<Services> list = session.createQuery("From Services").list();
		session.getTransaction().commit();
		session.close();
		return list;
	}

	public Services findById(int id) {
		Session session = sessionFactory.openSession();
		try {
			return (Services) session.get(Services.class, id);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}finally {
			session.close();
		}
	}

	public boolean Update(Services service) {
		Session session = sessionFactory.openSession();
		try {
			session.getTransaction().begin();
			session.update(service);
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

	public boolean Create(Services service) {
		Session session = sessionFactory.openSession();
		try {
			session.getTransaction().begin();
			session.save(service);
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

	public boolean Delete(Services service) {
		Session session = sessionFactory.openSession();
		try {
			session.getTransaction().begin();
			session.delete(service);
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
