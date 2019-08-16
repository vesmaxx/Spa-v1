package com.vesmax.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.vesmax.model.Orders;
import com.vesmax.model.Services;
import com.vesmax.model.Staffs;

@Transactional
@Repository
public class OrderDao {
	private final SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();

	@SuppressWarnings("unchecked")
	public List<Orders> getList() {
		Session ses = sessionFactory.openSession();
		List<Orders> list = ses.createQuery("From Orders").list();
		return list;
	}

	public boolean save(Orders orders) {
		Session session = this.sessionFactory.openSession();
		try {
			session.getTransaction().begin();
			session.save(orders);
			session.getTransaction().commit();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return false;
	}

	public boolean duyet(int id) {
		Session session = sessionFactory.openSession();
		try {
			session.getTransaction().begin();
			Query query = (Query) session.createQuery("update Orders set orderStatus = 1 where Id = '" + id + "'");
			query.executeUpdate();
			session.getTransaction().commit();
			return true;
		} catch (Exception e) {
			session.close();
			return false;
		}

	}

	public boolean tuchoi(int id) {
		Session ses = sessionFactory.openSession();
		try {
			ses.getTransaction().begin();
			Query query = (Query) ses.createQuery("update Orders set orderStatus = 0 where Id = '" + id + "'");
			query.executeUpdate();
			ses.getTransaction().commit();
		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			ses.close();
		}
		return true;
	}

	// public List<Staffs> liststaff() {
	// Session session = this.sessionFactory.getCurrentSession();
	// String sql = "SELECT * " + " FROM staffs r where staff_status !=1";
	// List<Staffs> list = session.createQuery(sql).list();
	// return list;
	// }
	@SuppressWarnings("unchecked")
	public List<Staffs> liststaff(int sl) {
		Session session = this.sessionFactory.openSession();
		try {
			String sql = "From Staffs where staffStatus !=1";
			Query query = session.createQuery(sql);
			query.setFirstResult(0);
			query.setMaxResults(sl);
			List<Staffs> list = query.list();
			return list;
		} catch (Exception e) {
			session.close();
			return null;
		}
	}

	public String updatastaff(int listID) {
		Session ses = sessionFactory.openSession();
		try {
			ses.getTransaction().begin();
			Query query = (Query) ses.createQuery("update Staffs set staffStatus = 1 where Id = '" + listID + "'");
			query.executeUpdate();
			ses.getTransaction().commit();
			return "Success";

		} catch (Exception e) {
			System.out.println(e);
			ses.close();
			return "no Success";

		}
	}

	public String updatatuchoi(int listID) {
		Session ses = sessionFactory.openSession();

		try {
			ses.getTransaction().begin();
			Query query = (Query) ses.createQuery("update Staffs set staffStatus = 0 where Id = '" + listID + "'");
			query.executeUpdate();
			ses.getTransaction().commit();
			return "Success";

		} catch (Exception e) {
			ses.close();
			return "Error";
		}

	}

	@SuppressWarnings("unchecked")
	public List<Staffs> liststaff1(int sl) {
		Session session = this.sessionFactory.openSession();
		try {
			String sql = "FROM Staffs  JOIN StaffsOrder ON StaffsOrder.staffs.id = Staffs.id JOIN Orders ON Orders.id = StaffsOrder.orders.id WHERE Orders.id ="+ sl ;
			List<Staffs> list = session.createQuery(sql).list();
			return list;

		} catch (Exception e) {
			session.close();
			return null;
		}
	}
	

	public Orders findById(int id) {
		Session session = sessionFactory.openSession();
		try {
			return (Orders) session.get(Orders.class, id);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			session.close();
		}
	}

	@SuppressWarnings("unchecked")
	public List<String> liststaff2(int sl) {
		List<String> list = null;
		Session session = this.sessionFactory.openSession();

		try {
			String sql = "Select Staffs.id FROM Staffs JOIN staffs_order ON staffs_order.staff_Id = Staffs.id JOIN Orders ON Orders.id = staffs_order.order_Id WHERE Orders.id ="+ sl ;
			list = session.createSQLQuery(sql).list();
			return list;

		} catch (Exception e) {
			System.out.println(e);
			session.close();
			return null;

		}

	}
}
