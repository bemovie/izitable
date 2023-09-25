package com.izitable.service;

import java.util.List;

import com.izitable.model.Customer;
import com.izitable.model.Pager;

public interface CustomerService {

	List<Customer> list(Pager pager);

	void update(Customer item);

	void delete(int custCode);

	void add(Customer item);

	Boolean login(Customer item);
}
