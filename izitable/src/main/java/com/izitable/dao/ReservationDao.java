package com.izitable.dao;

import java.util.List;

import com.izitable.model.Pager;
import com.izitable.model.Reservation;

public interface ReservationDao {

	int total(Pager pager);

	List<Reservation> list(Pager pager);

	void add(Reservation item);

	void update(Reservation item);

	void delete(int resCode);

	

}
