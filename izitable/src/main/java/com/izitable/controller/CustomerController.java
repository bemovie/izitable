package com.izitable.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.izitable.model.Customer;
import com.izitable.model.Pager;
import com.izitable.model.Reservation;
import com.izitable.service.CustomerService;
import com.izitable.service.ReservationService;

@Controller
@RequestMapping("/cust")
public class CustomerController {
	final String path = "customer/";
	
	@Autowired
	CustomerService service;
	
	@Autowired
	ReservationService reservationService;
	
	@GetMapping("/list")
	String list(Model model, Pager pager) {
		List<Customer> list = service.list(pager);
		
		model.addAttribute("list", list);
		
		return path + "list";
	}
	
	@GetMapping("/add")
	String add() {
		return path + "add";
	}
	
	@PostMapping("/add")
	String add(Customer item) {
		service.add(item);
		return "redirect:list";
	}
	
	@PostMapping("/update/{custCode}")
	String update(@PathVariable int custCode, Customer item) {
		item.setCustCode(custCode);
		
		service.update(item);
		
		return "redirect:../list";
	}
	
	
	@GetMapping("/delete/{custCode}")
	String delete(@PathVariable int custCode) {
		service.delete(custCode);
		
		return "redirect:../list";
	}
	
	@GetMapping("/res/{custCode}")
	String resList(@PathVariable int custCode, Model model) {
		
		List<Reservation> list = reservationService.custResList(custCode);
		
		model.addAttribute("list", list);
		
		return path + "resList";
	}
	
	@GetMapping("/res/delete/{resCode}")
	String delCustResList(@PathVariable int resCode, Model model) {
		
		reservationService.delCustResList(resCode);
		
		return "redirect:../../{custCode}";
	}

}
