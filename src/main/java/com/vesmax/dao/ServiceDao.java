package com.vesmax.dao;

import java.util.List;

import com.vesmax.model.Services;

public interface ServiceDao {
	List<Services> list();

	Services findById(int id);

	boolean Update(Services service);

	boolean Create(Services service);

	boolean Delete(int id);
}
