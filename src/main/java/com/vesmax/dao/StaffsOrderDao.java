package com.vesmax.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.vesmax.model.StaffsOrder;

@Transactional
@Repository

public class StaffsOrderDao {
	private final SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();

	public boolean save(StaffsOrder orders) {
		Session session = this.sessionFactory.openSession();
		try {
			session.save(orders);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return false;
	}
}
