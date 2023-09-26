package com.izitable.dao;

import java.util.List;

import com.izitable.model.Pager;
import com.izitable.model.Reservation;

public interface ReservationDao {

	void add(Reservation item);

	List<Reservation> custResList(int custCode);

	void delCustResList(int resCode);

}
