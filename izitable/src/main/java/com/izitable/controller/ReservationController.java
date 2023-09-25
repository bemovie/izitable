package com.izitable.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.izitable.model.Pager;
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
	
	@GetMapping("/list")
	String list(Model model, Pager pager) {
		List<Reservation> list = service.list(pager);
		
		model.addAttribute("list",list);
		return path + "list";
	}
	
	@GetMapping("/add")
	String add() {
		return path + "add";
	}
	
	@PatchMapping("/add")
     String add(Reservation item ) {
		service.add(item);
		
		return "redirect:list";
	}
	
	@GetMapping("/update/{resCode}")
	String update(@PathVariable int resCode, Reservation item) {
		item.setResCode(resCode);
		service.update(item);
		
		return "redirect:..list";
	}
	
	@GetMapping("delete/{resCode}")
	String delete(@PathVariable int resCode) {
		service.delete(resCode);
		
		return "redirect:..list";
	}
	
	
	
	
	
}


























