package com.vesmax.service;

import java.util.List;

import com.vesmax.model.Staffs;

public interface StaffService {
	List<Staffs> list();

	Staffs findById(int id);

	boolean Update(Staffs Staffs);

	boolean Create(Staffs Staffs);

	boolean Delete(Staffs Staffs);
}
