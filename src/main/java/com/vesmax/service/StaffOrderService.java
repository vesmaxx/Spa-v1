package com.vesmax.service;

import java.util.List;

import com.vesmax.model.StaffsOrder;

public interface StaffOrderService {
	List<StaffsOrder> list();

	StaffsOrder findById(int id);

	StaffsOrder Update(StaffsOrder StaffsOrder);

	StaffsOrder Create(StaffsOrder StaffsOrder);

	StaffsOrder Delete(int id);
}
