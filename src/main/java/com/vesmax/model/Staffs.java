package com.vesmax.model;
// Generated Jul 29, 2019 8:28:23 PM by Hibernate Tools 5.1.7.Final


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
 * Staffs generated by hbm2java
 */
@Entity
@Table(name = "staffs", schema = "dbo", catalog = "Qlspa")
public class Staffs  {

	private Integer id;
	private String name;
	private boolean gender;
	private Date birthday;
	private String photo;
	private String email;
	private String phone;
	private int salary;
	private Integer staffStatus;
	private Set<StaffsOrder> staffsOrders = new HashSet<StaffsOrder>(0);

	public Staffs() {
	}

	public Staffs(String name, boolean gender, Date birthday, String photo, String email,
			String phone, int salary) {
		this.name = name;
		this.gender = gender;
		this.birthday = birthday;
		this.photo = photo;
		this.email = email;
		this.phone = phone;
		this.salary = salary;
	}

	public Staffs(String name, boolean gender, Date birthday, String photo, String email,
			String phone, int salary, Integer staffStatus, Set<StaffsOrder> staffsOrders) {
		this.name = name;
		this.gender = gender;
		this.birthday = birthday;
		this.photo = photo;
		this.email = email;
		this.phone = phone;
		this.salary = salary;
		this.staffStatus = staffStatus;
		this.staffsOrders = staffsOrders;
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

	@Column(name = "Phone", nullable = false)
	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	@Column(name = "Salary", nullable = false)
	public int getSalary() {
		return this.salary;
	}

	public void setSalary(int salary) {
		this.salary = salary;
	}

	@Column(name = "staff_status")
	public Integer getStaffStatus() {
		return this.staffStatus;
	}

	public void setStaffStatus(Integer staffStatus) {
		this.staffStatus = staffStatus;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "staffs")
	public Set<StaffsOrder> getStaffsOrders() {
		return this.staffsOrders;
	}

	public void setStaffsOrders(Set<StaffsOrder> staffsOrders) {
		this.staffsOrders = staffsOrders;
	}

}
