package com.itbank.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/chat")
public class ChatController {
	
	@GetMapping("/home")
	public void home() {}
	
	@PostMapping("/join")
	public String join(String username, HttpSession session) {
		session.setAttribute("username", username);
		return "redirect:/chat/main";
	}
	
	@GetMapping("/main")
	public void main() {}
	
	@GetMapping("/out")
	public String out(HttpSession session) {
		session.invalidate();
		return "redirect:/chat/home";
	}
}
