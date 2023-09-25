package com.izitable.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.izitable.model.Pager;
import com.izitable.model.Reservation;

@Repository
public class ReservationDaoImpl implements ReservationDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public int total(Pager pager) {
		return sql.selectOne("reservation.total", pager);
	}

	@Override
	public List<Reservation> list(Pager pager) {
		return sql.selectList("reservation.list", pager);
	}

	@Override
	public void add(Reservation item) {
        sql.insert("reservation.add", item);
	}

	@Override
	public void update(Reservation item) {
        sql.update("reservation.update", item);
	}

	@Override
	public void delete(int resCode) {
        sql.delete("reservation.delete", resCode);		
	}

	

}
