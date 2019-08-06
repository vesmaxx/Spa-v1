package com.vesmax.service;

import java.util.List;

import com.vesmax.model.Services;

public interface ServiceService {
	List<Services> list();

	Services findById(int id);

	boolean Update(Services service);

	boolean Create(Services service);

	boolean Delete(Services service);

}
