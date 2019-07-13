package com.vesmax.controller;


import com.vesmax.service.AdminService;
import com.vesmax.service.AdminServiceimpl;

public class TestConnect {
	
	public static void main(String[] args) {
		AdminService adminService = new AdminServiceimpl();
		System.out.println(adminService.findByID(2).getUsername());

	}

}
