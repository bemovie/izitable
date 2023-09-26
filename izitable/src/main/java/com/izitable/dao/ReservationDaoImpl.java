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
	public void add(Reservation item) {
        sql.insert("reservation.add", item);
	}

	@Override
	public List<Reservation> custResList(int custCode) {
		return sql.selectList("reservation.custResList", custCode);
	}

	@Override
	public void delCustResList(int resCode) {
		sql.delete("reservation.delCustResList", resCode);
	}

}
