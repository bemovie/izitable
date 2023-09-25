package com.izitable.dao;

import java.util.List;

import com.izitable.model.Shop;

public interface ShopDao {

	List<Shop> list(Shop shop);

	Shop list(int shopCode);

}
