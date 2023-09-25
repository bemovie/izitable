package com.izitable.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.izitable.model.Shop;
import com.izitable.service.ShopService;

@Controller
@RequestMapping("/shop")
public class ShopController {
	final String path = "shop/";
	
	@Autowired
	ShopService service;
	
	@GetMapping("/list")
	String list() {
		return path + "list";
	}
	
	@PostMapping("/list")
	String list(Model model, Shop shop) {
		
		System.out.println(shop.getCity());
		
		List<Shop> list = service.list(shop);
		
		model.addAttribute("list", list);
		
		return path + "list";
	}
	
	@GetMapping("/item/{shopCode}")
	String item(@PathVariable int shopCode, Model model) {
		Shop item = service.item(shopCode);
		
		model.addAttribute("info", item);
		
		return path + "list";
	}

	
}
