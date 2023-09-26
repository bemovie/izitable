package com.izitable.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.izitable.dao.ShopDao;
import com.izitable.model.Shop;

@Service
public class ShopServiceImpl implements ShopService {

	@Autowired
	ShopDao dao;

	@Override
	public List<Shop> list(Shop shop) {
		return dao.list(shop);
	}

	@Override
	public Shop item(int shopNo) {
		return dao.list(shopNo);
	}
	
}
