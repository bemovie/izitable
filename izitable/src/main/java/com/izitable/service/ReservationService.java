package com.izitable.service;

import java.util.List;

import com.izitable.model.Pager;
import com.izitable.model.Reservation;

public interface ReservationService {

	void add(Reservation item);

	List<Reservation> custResList(int custCode);

	void delCustResList(int resCode);

}
