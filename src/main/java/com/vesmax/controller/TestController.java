package com.vesmax.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.vesmax.service.AdminService;
import com.vesmax.service.AdminServiceimpl;

@Controller
public class TestController {
	AdminService adminService = new AdminServiceimpl();
	
	@RequestMapping(value="client")
	public String abc(Model model) {
		System.out.println("client");
		return "client/abc";
	}
	
	@RequestMapping(value="admin")
	public String cde(Model model) {
		model.addAttribute("admin", adminService.list());
		System.out.println("admin");
		return "admin/cde";
	}

}
