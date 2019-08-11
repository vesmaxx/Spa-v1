package com.vesmax.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.vesmax.model.Users;

public class UserDaoimpl implements UserDao {

	private final SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();

	@SuppressWarnings("unchecked")
	@Override
	public List<Users> list() {
		Session session = sessionFactory.openSession();
		List<Users> list = session.createQuery("From Users").list();
		return list;
	}

	@Override
	public Users findByID(int id) {
		try {
			Session session = sessionFactory.openSession();
			Users user = (Users) session.get(Users.class, id);
			return user;
		} catch (Exception e) {
			System.out.println(e);
			return null;
		}

	}
	
	

	@Override
	public Boolean Update(Users user) {
		Session session = sessionFactory.openSession();
		try {
			session.getTransaction().begin();
			session.update(user);
			session.getTransaction().commit();
			return true;
		} catch (Exception e) {
			System.out.println(e);
			if (session.getTransaction() != null) {
				session.getTransaction().rollback();
			}
			return false;
		} finally {
			session.close();
		}
	}

	@Override
	public Boolean Create(Users user) {
		Session session = sessionFactory.openSession();
		try {
			session.getTransaction().begin();
			session.save(user);
			session.getTransaction().commit();
			return true;
		} catch (Exception e) {
			System.out.println(e);
			if (session.getTransaction() != null) {
				session.getTransaction().rollback();
			}
			return false;
		} finally {
			session.close();
		}
	}

	@Override
	public Boolean Delete(int id) {
		Session session = sessionFactory.openSession();
		Users user = (Users) session.get(Users.class, id);
		try {
			session.getTransaction().begin();
			session.delete(user);
			session.getTransaction().commit();
			return true;
		} catch (Exception e) {
			System.out.println(e);
			if (session.getTransaction() != null) {
				session.getTransaction().rollback();
			}
			return false;
		} finally {
			session.close();
		}
	}

	@Override
	public List<Users> findByEmail(String email) {
		try {
			Session session = sessionFactory.openSession();
			List<Users> user = session.createQuery("FROM Users WHERE Email ='" +email +"'").list();
			return user;
		} catch (Exception e) {
			System.out.println(e);
			return null;
		}
		
	}

}
