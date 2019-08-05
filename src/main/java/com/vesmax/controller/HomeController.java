package com.vesmax.controller;

import javax.servlet.http.HttpSession;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	@RequestMapping(value = "/")
	public String abc(Model model, HttpSession session) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
//		String email = auth.getName(); // get logged in username
//		System.out.println(email + "this is email");
		model.addAttribute("Email", auth.getName());
//		session.setAttribute("Email", auth.getName());
		System.out.println("client");
		return "client/homePage";
	}
}
