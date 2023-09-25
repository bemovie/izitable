package com.izitable.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import com.izitable.model.Customer;
import com.izitable.service.CustomerService;

@Controller
public class RootController {
	
	@Autowired
	CustomerService customerService;
	
	@GetMapping("/")
	String index(HttpSession session, Model model) {
		String msg = (String) session.getAttribute("msg");
		
		if(msg != null) {
			model.addAttribute("msg", msg);
			session.removeAttribute("msg");
		}
		
		return "shop/list";
	}
	
	@GetMapping("/login")
	String login() {
		return "login";
	}
	
	@PostMapping("/login")
	String login(Customer item, HttpSession session) {
		Boolean result = customerService.login(item); //return값을 true, false로 받기 위해 Boolean으로 result 받음
		
		if(result) { //result가 true면 로그인 되었다 => session에 사용자 정보를 저장			
			session.setAttribute("msg", "환영합니다");
			session.setAttribute("customer", item); //result가 Boolean 타입이므로, item을 받아야 Customer 정보가 담아짐,
		}
		
		else {
			session.setAttribute("msg", "로그인에 실패하였습니다");
		}
		return "redirect:/";
	}
	
	@GetMapping("/logout")
	String logout(HttpSession session) {
		session.invalidate(); //session에 있는 정보 무효화 => 모든 정보가 없어짐
		
		return "redirect:/";
	}
	
	@GetMapping("/join")
	String signup() {
		return "join";
	}
	
	@PostMapping("/join")
	String signup(Customer item) {
		customerService.add(item);
		
		return "redirect:.";
	}
	
	
	/*
	@ResponseBody //viewResolver한테 줘서 jsp 파일을 찾지 말고, 그대로 client에 보여줘라,
	@GetMapping("/checkId/{custid}")
	String checkId(@PathVariable String custid) {
		if(customerService.item(custid) == null) //true면 ID 사용 가능, false면 사용 불가능
			return "OK";		
		else
			return "FAIL";
	}
	*/
	
	
}
