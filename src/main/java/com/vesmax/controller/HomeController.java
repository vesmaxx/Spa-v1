package com.vesmax.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	@RequestMapping(value="client")
	public String abc(Model model) {
		System.out.println("client");
		return "client/abc";	
	}
}	
