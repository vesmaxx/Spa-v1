package com.vesmax.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.vesmax.model.Users;
import com.vesmax.service.UserService;
import com.vesmax.service.UserServiceimpl;

@Controller
public class AuthController {

	UserService userService = new UserServiceimpl();

	// @RequestMapping(value="register" , method = RequestMethod.GET)
	@GetMapping(value = "register")
	public String Register(Model model) {
		System.out.println("go register");
		return "client/register";
	}

	@PostMapping(value = "registered")
	public String Registered(Model model, @RequestParam("FieldName") String name,
			@RequestParam("FieldEmail") String email, @RequestParam("FieldPassword") String password) {
		if (userService.Create(new Users(email, password, name, 1, false))) {
			model.addAttribute("Msg", "Create successfully");
		} else {
			model.addAttribute("Msg", "Error. Please try again!");
		}
		return "redirect: login";
	}

	@GetMapping(value = "login")
	public String login() {
		return "client/login";
	}

}