package com.izitable.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.izitable.model.Reservation;
import com.izitable.model.Shop;
import com.izitable.service.ReservationService;
import com.izitable.service.ShopService;

@Controller
@RequestMapping("/res")
public class ReservationController {

	final String path = "res/";
	
	@Autowired
	ReservationService service;
	
	@Autowired
	ShopService shopService;
	
	@GetMapping("/{shopCode}")
	String item(@PathVariable int shopCode, Model model) {
		Shop item = shopService.item(shopCode);
		
		model.addAttribute("info", item);
		
		return "shop/list";
	}
	
	@PostMapping("/add")
     String add(Reservation item) {
		service.add(item);
		
		return "res/confirm";
	}
	
		
}
