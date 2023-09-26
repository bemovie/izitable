package com.izitable.service;

import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.izitable.dao.UserDao;
import com.izitable.model.User;
import com.izitable.model.Pager;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	UserDao dao;
	
	@Override
	public List<User> list(Pager pager) {
		int total = dao.total(pager);
		
		pager.setTotal(total);
		
		return dao.list(pager);
	}

	@Override
	public void update(User item) {
		dao.update(item);
	}

	@Override
	public void delete(int userNo) {
		dao.delete(userNo);
	}

	@Override
	public void add(User item) {
		dao.add(item);
	}

	@Override
	public Boolean login(User item) {
		User result = dao.login(item);
		
		if (result != null) {
			BeanUtils.copyProperties(result, item);
			item.setUserPwd(null);
			
			return true;
		}
		return false;	
	}

}
