package com.vesmax.controller;

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

import com.vesmax.dao.ImageDao;
import com.vesmax.dao.OrderDao;
import com.vesmax.dao.StaffsOrderDao;
import com.vesmax.model.Orders;
import com.vesmax.model.Services;
import com.vesmax.model.Staffs;
import com.vesmax.model.StaffsOrder;
import com.vesmax.model.Users;
import com.vesmax.security.TwilioMessageCreator;
import com.vesmax.service.ServiceServiceimpl;
import com.vesmax.service.UserService;
import com.vesmax.service.UserServiceimpl;

@Controller
public class HomeController {
	@Autowired
	OrderDao order;
	@Autowired
	StaffsOrderDao staffsOrderDao;
	@Autowired
	ImageDao imageDao;
	@Autowired
	TwilioMessageCreator twilioMessageCreator;

	// @Autowired
	// private JavaMailSender mailSender;
	//
	UserService userService = new UserServiceimpl();
	ServiceServiceimpl serviceimpl = new ServiceServiceimpl();
	com.vesmax.service.StaffServiceimpl StaffServiceimpl = new com.vesmax.service.StaffServiceimpl();

	// public boolean sendmail(String from, String to, String title, String reson) {
	// try {
	// MimeMessage mail = mailSender.createMimeMessage();
	// MimeMessageHelper helper = new MimeMessageHelper(mail);
	// helper.setFrom(from, from);
	// helper.setTo(to);
	// helper.setReplyTo(from, from);
	// helper.setSubject(title);
	// helper.setText(reson, true);
	// mailSender.send(mail);
	// return true;
	// } catch (Exception e) {
	// return false;
	// }
	//
	// }

	@RequestMapping(value = "/")
	public String home(Model model, HttpSession session) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		session.setAttribute("Email", auth.getName());
		return "client/homePage";
	}
	
	@RequestMapping(value = "service")
	public String service(Model model) {
		model.addAttribute("service", serviceimpl.list());
		return "client/service";
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
			@RequestParam("FieldBirthday") String birthday, @RequestParam("FieldPhone") String phone) {
		userService.Update(new Users(id, email, userService.findById(id).getPasswords(),
				userService.findById(id).getRoles(), name, userService.findById(id).getGender(), birthday,
				userService.findById(id).getCustormerStatus(), phone));
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
			@RequestParam("seconds") String seconds, @RequestParam("location") String location,
			@RequestParam("round") String round, @RequestParam("users") int users) {

		try {

			Authentication auth = SecurityContextHolder.getContext().getAuthentication();
			List<Users> user = userService.findByEmail(auth.getName());
			Orders orders = new Orders(serviceimpl.findById(services), userService.findById(users), number, dates,
					minute, seconds, location, round, 3);
			Services services2 = serviceimpl.findById(services);
			String customerNumber = "+84" + user.get(0).getPhoto().substring(1, 10);
			String location2 = "";
			if (Integer.valueOf(location) == 1) {
				location2 = "Lam tai nha.";
			} else {
				location2 = "Lam tai Spa.";
			}

			String msg = "\r\n (Hantus Spa) \r\nXac nhan lich hen: \r\n" + "Ten khach hang: " + user.get(0).getName()
					+ "\r\n" + "Dich vu :" + services2.getName() + "\r\n" + "Dia diem: " + location2 + "\r\n"
					+ "Thoi gian: " + minute + ":" + seconds + " ngay " + dates;

			if (order.save(orders) == true) {

				/*
				 * sendmail("", auth.getName(), "Thong tin xac nhan", "date: " + dates +
				 * "house:" + minute + ":" + seconds + "number:" + number + "location:" +
				 * location + "round:" + round);
				 */

				twilioMessageCreator.sendSMS(msg, customerNumber);

				List<Staffs> idstaff = order.liststaff(number);
				for (Staffs a2 : idstaff) {
					staffsOrderDao.save(
							new StaffsOrder(order.findById(orders.getId()), StaffServiceimpl.findById(a2.getId())));
					order.updatastaffOrder(a2.getId());
				}
				return "redirect:/";
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return "loi";
	}

	@GetMapping(value = "orderHistory")
	public String List(Model model) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		List<Users> users = userService.findByEmail(auth.getName());
		int id = 0;
		for (Users users2 : users) {

			id = users2.getId();

		}

		model.addAttribute("admin", order.listorder(id));

		return "client/OrderHistory";
	}

	@GetMapping(value = "gallery")
	public String Gallery(Model model) {
		model.addAttribute("image", imageDao.list());
		return "client/image";
	}
}
