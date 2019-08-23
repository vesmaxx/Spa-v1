package com.vesmax.controller;

import javax.servlet.http.HttpSession;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.vesmax.model.Users;
import com.vesmax.service.UserService;
import com.vesmax.service.UserServiceimpl;

@Controller
@RequestMapping(value = "/admin/")
public class UserController {

	UserService userService = new UserServiceimpl();

	@GetMapping(value = "user-list")
	public String List(Model model, HttpSession session) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		session.setAttribute("Email", userService.findByEmail(auth.getName()).get(0).getName());
		model.addAttribute("admin", userService.list());
		return "admin/user/List";
	}

	@GetMapping(value = "/user-delete/{id}")
	public String Delete(Model model, @PathVariable("id") int User_ID) {
		userService.Delete(User_ID);
		model.addAttribute("admin", userService.list());
		return "redirect: /Spa_V1/admin/user-list";
	}

	@PostMapping(value = "/user-update")
	public String Update(Model model, @RequestParam("FieldEmail") String email, @RequestParam("FieldName") String name,
			@RequestParam("FieldBirthDay") String birthday, @RequestParam("FieldRole") Integer role,
			@RequestParam("FieldID") Integer id, @RequestParam("FieldPhone") String phone

	) {
		userService.Update(new Users(id, email, userService.findById(id).getPasswords(), role, name,
				userService.findById(id).getGender(), birthday, userService.findById(id).getCustormerStatus(), phone));
		return "redirect: /Spa_V1/admin/user-list";
	}

}
