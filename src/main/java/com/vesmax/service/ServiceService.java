package com.vesmax.service;

import java.util.List;

import com.vesmax.model.Services;

public interface ServiceService {
	List<Services> list();

	Services findById(int id);

	Services Update(Services service);

	Services Create(Services service);

	Services Delete(int id);

}
