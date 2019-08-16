package com.vesmax.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.vesmax.dao.OrderDao;
import com.vesmax.dao.StaffsOrderDao;
import com.vesmax.model.Orders;
import com.vesmax.model.Services;
import com.vesmax.model.Staffs;
import com.vesmax.model.StaffsOrder;
import com.vesmax.service.ServiceServiceimpl;
import com.vesmax.service.UserService;
import com.vesmax.service.UserServiceimpl;

@Controller
@RequestMapping(value = "/admin/")

public class OrderController {
	@Autowired
	OrderDao order;
	@Autowired
	StaffsOrderDao staff;
	UserService userService = new UserServiceimpl();
	ServiceServiceimpl serviceimpl = new ServiceServiceimpl();
	com.vesmax.service.StaffServiceimpl StaffServiceimpl = new com.vesmax.service.StaffServiceimpl();

	@ModelAttribute("services")
	public List<Services> getlist(ModelMap model) {
		List<Services> services = serviceimpl.list();
		model.addAttribute("services", services);
		return services;
	}

	@ModelAttribute("phut")
	public Map<String, String> phut() {
		Map<String, String> level = new HashMap<String, String>();
		level.put("08", "08");
		level.put("09", "09");
		level.put("10", "10");
		level.put("11", "11");
		level.put("12", "12");
		level.put("13", "13");
		level.put("14", "14");
		level.put("15", "15");
		level.put("16", "16");
		level.put("17", "17");
		level.put("18", "18");
		level.put("19", "19");
		return level;
	}

	@ModelAttribute("giay")
	public Map<String, String> giay() {
		Map<String, String> level = new HashMap<String, String>();
		level.put("05", "05");
		level.put("10", "10");
		level.put("15", "15");
		level.put("20", "20");
		level.put("25", "25");
		level.put("30", "30");
		level.put("35", "35");
		level.put("40", "40");
		level.put("45", "45");
		level.put("50", "50");
		return level;
	}

	@GetMapping(value = "order")
	public String List(Model model) {
		model.addAttribute("admin", order.getList());
		System.out.println("admin");
		return "admin/Order/list";
	}

	@GetMapping(value = "duyet/{id}")
	public String duyet(Model model, @PathVariable("id") int id) {
		System.out.println("go duyet");
		try {
			order.duyet(id);
			if (order.duyet(id)) {
				List<String> idStaffs = order.liststaff2(id);
				System.out.println(order.liststaff2(id));
				System.out.println("-------"+idStaffs.indexOf(0));
				for (int i = 0 ; i < idStaffs.size();i++) {
					order.updatastaff(idStaffs.indexOf(i+1));
				}
			}
			model.addAttribute("admin", order.getList());
			return "redirect: /Spa_V1/admin/order";
		} catch (Exception e) {
			return "";
		}
	}

	@GetMapping(value = "tuchoi/{id}")
	public String tuchoi(Model model, @PathVariable("id") int id) {
		System.out.println("go tu choi");
		System.out.println("-------------" + order.liststaff1(id));
		order.tuchoi(id);
		if (order.tuchoi(id) == true) {
			List<Staffs> idStaffs = order.liststaff1(id);
			for (Staffs idString : idStaffs) {
				order.updatatuchoi(idString.getId());
			}

		}

		model.addAttribute("admin", order.getList());
		return "redirect: /Spa_V1/admin/order";
	}

}
