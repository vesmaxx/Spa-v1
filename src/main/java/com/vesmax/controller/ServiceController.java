package com.vesmax.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.vesmax.service.ServiceService;
import com.vesmax.service.ServiceServiceimpl;

@Controller
@RequestMapping(value = "/admin/")
public class ServiceController {
    ServiceService serviceService = new ServiceServiceimpl();
	@GetMapping("service")
public String List(Model model) {
	model.addAttribute("service", serviceService.list());
	return "admin/service/List";
}
}
