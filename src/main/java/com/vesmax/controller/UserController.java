package com.vesmax.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.vesmax.service.UserService;
import com.vesmax.service.UserServiceimpl;

@Controller
@RequestMapping(value="admin/")
public class UserController {
	
	UserService userService = new UserServiceimpl();
	
	@RequestMapping(value="user")
	public String cde(Model model) {
		model.addAttribute("admin", userService.list());
		System.out.println("admin");
		return "admin/user/List";
	}
	
//	@RequestMapping(value="user")
//	public String cde(Model model) {
//		model.addAttribute("admin", userService.list());
//		System.out.println("admin");
//		return "admin/user/List";
//	}

}
