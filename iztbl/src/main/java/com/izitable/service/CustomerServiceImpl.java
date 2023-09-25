package com.izitable.service;

import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.izitable.dao.CustomerDao;
import com.izitable.model.Customer;
import com.izitable.model.Pager;

@Service
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	CustomerDao dao;
	
	@Override
	public List<Customer> list(Pager pager) {
		int total = dao.total(pager);
		
		pager.setTotal(total);
		
		return dao.list(pager);
	}

	@Override
	public void update(Customer item) {
		dao.update(item);
	}

	@Override
	public void delete(String custCode) {
		dao.delete(custCode);
	}

	@Override
	public void add(Customer item) {
		dao.add(item);
	}

	@Override
	public Boolean login(Customer item) {
		Customer result = dao.login(item);
		
		if (result != null) {
			BeanUtils.copyProperties(result, item);
			item.setCustPassword(null);
			
			return true;
		}
		return false;	
	}

}
