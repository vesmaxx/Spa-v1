package com.vesmax.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.vesmax.dao.OrderDao;
import com.vesmax.dao.StaffsOrderDao;
import com.vesmax.model.Orders;
import com.vesmax.model.Staffs;
import com.vesmax.model.StaffsOrder;
import com.vesmax.model.Users;
import com.vesmax.service.ServiceServiceimpl;
import com.vesmax.service.UserService;
import com.vesmax.service.UserServiceimpl;

@Controller
public class HomeController {
	@Autowired
	OrderDao order;
	@Autowired
	StaffsOrderDao staffsOrderDao;

	UserService userService = new UserServiceimpl();
	ServiceServiceimpl serviceimpl = new ServiceServiceimpl();
	com.vesmax.service.StaffServiceimpl StaffServiceimpl = new com.vesmax.service.StaffServiceimpl();

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
	public String profileProcess(Model model, @RequestParam("FieldName") String name,
			@RequestParam("FieldEmail") String email, @RequestParam("FieldGender") Boolean gender,
			@RequestParam("FieldId") Integer id, @RequestParam("FieldPWS") String pass,
			@RequestParam("FieldBirthday") String birthday) {
		userService.Update(new Users(id, email, pass, 1, name, gender, birthday, false));
		return "redirect: profile";
	}

	@GetMapping(value = "booking")
	public String booking(Model model) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		model.addAttribute("User", userService.findByEmail(auth.getName()));
		model.addAttribute("service", serviceimpl.list());
		return "client/booking";
	}

	@PostMapping(value = "booked")
	public String bookinged(Model model, @RequestParam("services") int services, @RequestParam("date") String dates,
			@RequestParam("number") int number, @RequestParam("minute") String minute,
			@RequestParam("seconds") String seconds, @RequestParam("users") int users) {
	try {
		System.out.println(order.liststaff(number));
		Orders orderss =new Orders(serviceimpl.findById(services), userService.findById(users), number, dates, minute,
				seconds, 3);
		if (order.save(orderss)==true) {
			List<Staffs> idstaff = order.liststaff(number);
			System.out.println(order.liststaff(number));
			for (Staffs a2 : idstaff) {
				 staffsOrderDao.save(new StaffsOrder(order.findById(orderss.getId()),StaffServiceimpl.findById(a2.getId())));
			}
			return "redirect:/";
		}
	} catch (Exception e) {
		System.out.println(e);
	}
		return "loi";
	}
}
