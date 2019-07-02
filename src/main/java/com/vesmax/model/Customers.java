package com.vesmax.model;
// Generated Jun 29, 2019 6:03:20 PM by Hibernate Tools 5.1.7.Final


import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * Customers generated by hbm2java
 */
@Entity
@Table(name = "customers", schema = "dbo", catalog = "Qlspa")
public class Customers  {

	private Integer id;
	private String username;
	private String passwords;
	private String name;
	private boolean gender;
	private Date birthday;
	private String photo;
	private String email;
	private Integer customerServiceId;
	private Integer orderCount;
	private Boolean custormerStatus;
	private Set<Orders> orderses = new HashSet<Orders>(0);

	public Customers() {
	}

	public Customers(String username, String name, boolean gender, Date birthday, String photo,
			String email) {
		this.username = username;
		this.name = name;
		this.gender = gender;
		this.birthday = birthday;
		this.photo = photo;
		this.email = email;
	}

	public Customers(String username, String passwords, String name, boolean gender, Date birthday,
			String photo, String email, Integer customerServiceId, Integer orderCount,
			Boolean custormerStatus, Set<Orders> orderses) {
		this.username = username;
		this.passwords = passwords;
		this.name = name;
		this.gender = gender;
		this.birthday = birthday;
		this.photo = photo;
		this.email = email;
		this.customerServiceId = customerServiceId;
		this.orderCount = orderCount;
		this.custormerStatus = custormerStatus;
		this.orderses = orderses;
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

	@Column(name = "Username", nullable = false)
	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	@Column(name = "Passwords")
	public String getPasswords() {
		return this.passwords;
	}

	public void setPasswords(String passwords) {
		this.passwords = passwords;
	}

	@Column(name = "Name", nullable = false)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "Gender", nullable = false)
	public boolean isGender() {
		return this.gender;
	}

	public void setGender(boolean gender) {
		this.gender = gender;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "Birthday", nullable = false, length = 10)
	public Date getBirthday() {
		return this.birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	@Column(name = "Photo", nullable = false)
	public String getPhoto() {
		return this.photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	@Column(name = "Email", nullable = false)
	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Column(name = "customer_serviceId")
	public Integer getCustomerServiceId() {
		return this.customerServiceId;
	}

	public void setCustomerServiceId(Integer customerServiceId) {
		this.customerServiceId = customerServiceId;
	}

	@Column(name = "order_count")
	public Integer getOrderCount() {
		return this.orderCount;
	}

	public void setOrderCount(Integer orderCount) {
		this.orderCount = orderCount;
	}

	@Column(name = "custormer_status")
	public Boolean getCustormerStatus() {
		return this.custormerStatus;
	}

	public void setCustormerStatus(Boolean custormerStatus) {
		this.custormerStatus = custormerStatus;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "customers")
	public Set<Orders> getOrderses() {
		return this.orderses;
	}

	public void setOrderses(Set<Orders> orderses) {
		this.orderses = orderses;
	}

}
