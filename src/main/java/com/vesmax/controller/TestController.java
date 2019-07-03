package com.vesmax.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestController {
	@RequestMapping(value="client")
	public String abc() {
		System.out.println("client");
		return "client/abc";
	}
	
	@RequestMapping(value="admin")
	public String cde() {
		System.out.println("admin");
		return "admin/cde";
	}

}
