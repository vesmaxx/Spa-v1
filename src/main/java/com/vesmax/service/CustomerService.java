package com.vesmax.service;

import java.util.List;

import com.vesmax.model.Customers;

public interface CustomerService {
List<Customers> list();
	
	Customers findById(int id);
	
	Customers Update(Customers admin);
	
	Customers Create(Customers admin);
	
	Customers Delete(int id);

}
