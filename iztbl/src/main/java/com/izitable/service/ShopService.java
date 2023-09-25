package com.izitable.service;

import java.util.List;

import com.izitable.model.Shop;

public interface ShopService {

	List<Shop> list(Shop shop);

	Shop item(int shopCode);

}
