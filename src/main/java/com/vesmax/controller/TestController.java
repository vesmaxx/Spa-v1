package com.vesmax.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestController {
	@RequestMapping(value="abc")
	public String abc() {
		System.out.println("hhhhh");
		return "client/abc";
	}
	
	@RequestMapping(value="cde")
	public String cde() {
		System.out.println("hhhhh");
		return "admin/cde";
	}

}
