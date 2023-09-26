package com.izitable.dao;

import java.util.List;

import com.izitable.model.Customer;
import com.izitable.model.Pager;
import com.izitable.model.Reservation;

public interface CustomerDao {

	List<Customer> list(Pager pager);

	int total(Pager pager);

	void update(Customer item);

	void delete(int custCode);

	void add(Customer item);

	Customer login(Customer item);

}
