package com.izitable.service;

import java.util.List;

import com.izitable.model.Pager;
import com.izitable.model.Reservation;

public interface ReservationService {

	List<Reservation> list(Pager pager);

	void add(Reservation item);

	void update(Reservation item);

	void delete(int resCode);



}
