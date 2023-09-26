package com.izitable.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.izitable.model.User;
import com.izitable.model.Pager;
import com.izitable.model.Booking;
import com.izitable.service.UserService;
import com.izitable.service.BookingService;

@Controller
@RequestMapping("/user")
public class UserController {
	final String path = "user/";
	
	@Autowired
	UserService userService;
	
	@Autowired
	BookingService bookingService;
	
	//회원 목록
	@GetMapping("/list")
	String list(Model model, Pager pager) {
		List<User> list = userService.list(pager);
		
		model.addAttribute("list", list);
		
		return path + "list";
	}
	
	//회원 추가
	@GetMapping("/add")
	String add() {
		return path + "add";
	}
	
	@PostMapping("/add")
	String add(User item) {
		userService.add(item);
		return "redirect:list";
	}
	
	//회원 정보 변경
	@PostMapping("/update/{userNo}")
	String update(@PathVariable int userNo, User item) {
		item.setUserNo(userNo);
		
		userService.update(item);
		
		return "redirect:../list";
	}
	
	//회원 삭제
	@GetMapping("/delete/{userNo}")
	String delete(@PathVariable int userNo) {
		userService.delete(userNo);
		
		return "redirect:../list";
	}
	
	//회원 페이지 예약 목록
	@GetMapping("/booking/{userNo}")
	String resList(@PathVariable int userNo, Model model) {
		
		List<Booking> list = bookingService.userBookingList(userNo);
		
		model.addAttribute("list", list);
		
		return path + "bookingList";
	}
	
	//회원 페이지 예약 삭제
	@GetMapping("/booking/delete/{bookingId}")
	String delCustResList(@PathVariable int bookingId, Model model) {
		
		bookingService.delUserBooking(bookingId);
		
		return path + "bookingList";
	}

}
