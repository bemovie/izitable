package com.izitable.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.izitable.model.User;
import com.izitable.model.Pager;
import com.izitable.model.Booking;

@Repository
public class UserDaoImpl implements UserDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public List<User> list(Pager pager) {
		return sql.selectList("customer.list", pager);
	}

	@Override
	public int total(Pager pager) {
		return sql.selectOne("customer.total", pager);
	}

	@Override
	public void update(User item) {
		sql.update("customer.update", item);
	}

	@Override
	public void delete(int custCode) {
		sql.delete("customer.delete", custCode);
	}

	@Override
	public void add(User item) {
		sql.insert("customer.add", item);
	}

	@Override
	public User login(User item) {
		return sql.selectOne("customer.login", item);
	}

	

}
