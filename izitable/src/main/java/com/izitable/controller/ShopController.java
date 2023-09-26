package com.izitable.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

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
	ShopService shopservice;
	
	//매장 목록 (메인 페이지)
	@GetMapping("/list")
	String list() {
		
		return path + "list";
	}
	
	//매장 목록 (필터) 
	@PostMapping("/list")
	String list(Model model, Shop shop) {
		
		//System.out.println(shop.getCity());
		
		List<Shop> list = shopservice.list(shop);
		
		model.addAttribute("list", list);
		
		return path + "list";
	}
	
	//매장 상세정보
	@GetMapping("/item/{shopNo}")
	String item(@PathVariable int shopNo, Model model) {
		Shop item = shopservice.item(shopNo);
		
		model.addAttribute("info", item);
		
		return path + "list";
	}

}
