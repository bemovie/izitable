package com.izitable.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.izitable.dao.ReservationDao;
import com.izitable.model.Pager;
import com.izitable.model.Reservation;

@Service
public class ReservationServiceImpl implements ReservationService {

	@Autowired
	ReservationDao dao;

	@Override
	public void add(Reservation item) {
        dao.add(item);		
	}

	@Override
	public List<Reservation> custResList(int custCode) {
		return dao.custResList(custCode);
	}

	@Override
	public void delCustResList(int resCode) {
		dao.delCustResList(resCode);
	}

}
