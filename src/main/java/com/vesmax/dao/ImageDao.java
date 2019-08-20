package com.vesmax.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.vesmax.model.Images;
import com.vesmax.model.Users;

@Transactional
@Repository
public class ImageDao {

	private final SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
	
	@SuppressWarnings("unchecked")
	public List<Images> list() {
		Session session = sessionFactory.openSession();
		List<Images> list = session.createQuery("From Images").list();
		return list;
	}
	
	
	public Boolean Create(Images image) {
		Session session = sessionFactory.openSession();
		try {
			session.getTransaction().begin();
			session.save(image);
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
	
	public Boolean Delete(int id) {
		Session session = sessionFactory.openSession();
		Images user = (Images) session.get(Images.class, id);
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
}
