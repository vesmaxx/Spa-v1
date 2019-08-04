package com.vesmax.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.vesmax.service.UserService;
import com.vesmax.service.UserServiceimpl;

@Controller
@RequestMapping(value="/admin/")
public class UserController {
	
	UserService userService = new UserServiceimpl();
	
	@RequestMapping(value="user-list" )
	public String List(Model model) {
		model.addAttribute("admin", userService.list());
		System.out.println("admin");
		return "admin/user/List";
	}
	
	
	
	@RequestMapping(value="/user-delete/{id}")
	public String Delete(Model model, @PathVariable("id") int User_ID ) {
		System.out.println("go delete");
		System.out.println(User_ID + "ID");
		userService.Delete(User_ID);
		model.addAttribute("admin", userService.list());
		return "redirect: /Spa_V1/admin/user-list";
	}

}
