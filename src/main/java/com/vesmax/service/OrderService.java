package com.vesmax.service;

import java.util.List;


import com.vesmax.model.Orders;

public interface OrderService {

	List<Orders> list();

	Orders findById(int id);

	Orders Update(Orders order);

	Orders Create(Orders order);

	Orders Delete(int id);

}
