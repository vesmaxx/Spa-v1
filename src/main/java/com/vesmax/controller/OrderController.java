package com.vesmax.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
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

@Controller
@RequestMapping(value = "/admin/")
public class OrderController {
	@Autowired
	OrderDao order;
	@Autowired
	StaffsOrderDao staff;

	ServiceServiceimpl a = new ServiceServiceimpl();

	@ModelAttribute("services")
	public List<Services> getlist(ModelMap model) {
		List<Services> services = a.list();
		model.addAttribute("services", services);
		return services;
	}

	@GetMapping(value = "order-list")
	public String List(Model model) {
		model.addAttribute("admin", order.getList());
		System.out.println("admin");
		return "admin/Order/list";
	}

	@GetMapping(value = "duyet/{id}")
	public String duyet(Model model, @PathVariable("id") int id) {
		System.out.println("go duyet");
		System.out.println(id);
		if (order.duyet(id)) {
			order.updatastaff(order.liststaff1(id));
		}
		model.addAttribute("admin", order.getList());
		return "redirect: /Spa_V1/admin/Order-list";
	}

	@GetMapping(value = "tuchoi/{id}")
	public String tuchoi(Model model, @PathVariable("id") int id) {
		System.out.println("go tu choi");
		System.out.println(id);
		if (order.tuchoi(id)) {
			order.updatatuchoi(order.liststaff1(id));
		}

		model.addAttribute("admin", order.getList());
		return "redirect: /Spa_V1/admin/Order-list";
	}

	@GetMapping(value = "datlich")
	public String datlich(Model model) {
		System.out.println("go datlich");
		model.addAttribute("News", new Orders());
		return "admin/order/datlich";
	}

	@RequestMapping(value = "order", method = RequestMethod.POST)
	public String save1(ModelMap model, @ModelAttribute("News") Orders orders) {

		try {
			if(order.save(new Orders(orders.getServices(), orders.getUsers(), orders.getNumber(), orders.getTimes(), 3))) {
				List<Staffs> idstaff = order.liststaff(orders.getNumber());
				for(Staffs a : idstaff) {
					staff.save(new StaffsOrder(orders, a));
				}
			}
			
			return "redirect:/admin/";
		} catch (Exception e) {
			System.out.println(e);

		}
		return "loi";
	}
}
