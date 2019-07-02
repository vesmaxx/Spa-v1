package com.vesmax.service;

import java.util.List;

import com.vesmax.model.Staffs;

public interface StaffService {
	List<Staffs> list();

	Staffs findById(int id);

	Staffs Update(Staffs Staffs);

	Staffs Create(Staffs Staffs);

	Staffs Delete(int id);
}
