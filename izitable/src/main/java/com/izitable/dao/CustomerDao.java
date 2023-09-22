package com.izitable.dao;

import java.util.List;

import com.izitable.model.Customer;
import com.izitable.model.Pager;

public interface CustomerDao {

	List<Customer> list(Pager pager);

	int total(Pager pager);

	void update(Customer item);

	void delete(String custCode);

	void add(Customer item);

}
