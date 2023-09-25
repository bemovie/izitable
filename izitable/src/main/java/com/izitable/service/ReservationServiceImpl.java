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
	public List<Reservation> list(Pager pager) {
		int total = dao.total(pager); 
		pager.setTotal(total);
		return dao.list(pager) ;
	}

	@Override
	public void add(Reservation item) {
        dao.add(item);		
	}

	@Override
	public void update(Reservation item) {
        dao.update(item);		
	}

	@Override
	public void delete(int resCode) {
		dao.delete(resCode);		
	}















}
