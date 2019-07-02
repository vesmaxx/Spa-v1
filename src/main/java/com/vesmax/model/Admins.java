package com.vesmax.model;
// Generated Jun 29, 2019 6:03:20 PM by Hibernate Tools 5.1.7.Final


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * Admins generated by hbm2java
 */
@Entity
@Table(name = "admins", schema = "dbo", catalog = "Qlspa")
public class Admins  {

	private String username;
	private Staffs staffs;
	private String passwords;
	private Integer roles;

	public Admins() {
	}

	public Admins(String username) {
		this.username = username;
	}

	public Admins(String username, Staffs staffs, String passwords, Integer roles) {
		this.username = username;
		this.staffs = staffs;
		this.passwords = passwords;
		this.roles = roles;
	}

	@Id

	@Column(name = "Username", unique = true, nullable = false)
	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "staff_Id")
	public Staffs getStaffs() {
		return this.staffs;
	}

	public void setStaffs(Staffs staffs) {
		this.staffs = staffs;
	}

	@Column(name = "Passwords")
	public String getPasswords() {
		return this.passwords;
	}

	public void setPasswords(String passwords) {
		this.passwords = passwords;
	}

	@Column(name = "roles")
	public Integer getRoles() {
		return this.roles;
	}

	public void setRoles(Integer roles) {
		this.roles = roles;
	}

}
