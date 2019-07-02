package com.vesmax.model;
// Generated Jun 29, 2019 6:03:20 PM by Hibernate Tools 5.1.7.Final

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * StaffsOrder generated by hbm2java
 */
@Entity
@Table(name = "staffs_order", schema = "dbo", catalog = "Qlspa")
public class StaffsOrder  {

	private Integer id;
	private Orders orders;
	private Staffs staffs;

	public StaffsOrder() {
	}

	public StaffsOrder(Orders orders, Staffs staffs) {
		this.orders = orders;
		this.staffs = staffs;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "Id", unique = true, nullable = false)
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "order_Id")
	public Orders getOrders() {
		return this.orders;
	}

	public void setOrders(Orders orders) {
		this.orders = orders;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "staff_Id")
	public Staffs getStaffs() {
		return this.staffs;
	}

	public void setStaffs(Staffs staffs) {
		this.staffs = staffs;
	}

}
