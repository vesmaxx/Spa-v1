package com.vesmax.dao;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.vesmax.model.Orders;
import com.vesmax.model.Staffs;
@Transactional
@Repository
public class OrderDao {
	private final SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
	@SuppressWarnings("unchecked")
	public List<Orders> getList() {
		Session ses = sessionFactory.getCurrentSession();
		List<Orders> list = ses.createQuery("From Orders").list();
		return list;
	}

	public boolean save(Orders orders) {
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

	public boolean duyet(int id) {
		Session ses = sessionFactory.getCurrentSession();
		Query query = (Query) ses.createQuery("update orders set status = 1 where Id = '" + id + "'");
		query.executeUpdate();
		return true;
	}

	public boolean tuchoi(int id) {
		Session ses = sessionFactory.getCurrentSession();
		Query query = (Query) ses.createQuery("update orders set status = 0 where Id = '" + id + "'");
		query.executeUpdate();
		return true;
	}

//	public List<Staffs> liststaff() {
//		Session session = this.sessionFactory.getCurrentSession();
//		String sql = "SELECT * " + " FROM staffs r where staff_status !=1";
//		List<Staffs> list = session.createQuery(sql).list();
//		return list;
//	}
	public List<Staffs> liststaff(int sl) {
		Session session = this.sessionFactory.getCurrentSession();
		String sql = "SELECT top " +sl + "  FROM staffs r where staff_status !=1";
		List<Staffs> list = session.createQuery(sql).list();
		return list;
	}

	public String updatastaff(List<String> listID) {
		Session ses = sessionFactory.getCurrentSession();
		if(listID!=null) {
			String sql = "update staffs set staff_status = 1 where Id in (:Id)";
			SQLQuery q = ses.createSQLQuery(sql);
			q.setParameterList("Id", listID);
			q.executeUpdate();
		}
		else {
			System.out.println("loi" + listID);
		}
		return "Success";
		
	}

	public String updatatuchoi(List<String> listID) {
		Session ses = sessionFactory.getCurrentSession();
		if(listID!=null) {
			String sql = "update staffs set staff_status = 0 where Id in (:Id)";
			SQLQuery q = ses.createSQLQuery(sql);
			q.setParameterList("Id", listID);
			q.executeUpdate();
		}
		else {
			System.out.println("loi" + listID);
		}
		return "Success";
		
	}
	
	public List<String> liststaff1(int sl) {
		Session session = this.sessionFactory.getCurrentSession();
		String sql = "select staffs.Id from staffs join staffs_order on staffs.Id = staffs_order.staff_Id join orders on staffs_order.order_Id=orders.Id where orders.Id = "+sl;
		List<String> list = session.createQuery(sql).list();
		return list;
	}
}
