package com.vesmax.controller;

import javax.servlet.http.HttpSession;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.vesmax.model.Users;
import com.vesmax.service.UserService;
import com.vesmax.service.UserServiceimpl;

@Controller
public class HomeController {

	UserService userService = new UserServiceimpl();

	@RequestMapping(value = "/")
	public String home(Model model, HttpSession session) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		session.setAttribute("Email", auth.getName());
		System.out.println("client");
		return "client/homePage";
	}

	@GetMapping(value = "profile")
	public String profile(Model model, HttpSession session) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		model.addAttribute("User", userService.findByEmail(auth.getName()));
		return "client/profile";
	}

	@PostMapping(value = "profile-proccess")
	public String profileProcess(Model model, 
			@RequestParam("FieldName") String name,
			@RequestParam("FieldEmail") String email,
			@RequestParam("FieldGender") Boolean gender,
			@RequestParam("FieldId") Integer id,
			@RequestParam("FieldPWS") String pass,
			@RequestParam("FieldBirthday") String birthday) {
			userService.Update(new Users(id, email, pass, 1, name, gender, birthday, false));
		return "redirect: profile";
	}
}
