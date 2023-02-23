package com.itbank.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.component.ChatComponent;
import com.itbank.model.ChatMessageDTO;
import com.itbank.model.UsersDTO;
import com.itbank.service.ChatService;

@Controller
@RequestMapping("/chat")
public class ChatController {
	
	@Autowired private ChatComponent chatComponent;
	@Autowired private ChatService chatService;
	
	@GetMapping("/home")
	public ModelAndView home(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		UsersDTO login = (UsersDTO)session.getAttribute("login");
		List<HashMap<String, Object>> list = chatService.getChatRoomList(login.getIdx());
		mav.addObject("list", list);
		
		return mav;
	}
	
	@PostMapping("/login")
	public String login(String username, HttpSession session, HttpServletRequest request) {
		session.setAttribute("username", username);
		System.out.println(request.getRemoteAddr());
		return "redirect:/chat/main";
	}
	
	@GetMapping("/main")
	public ModelAndView main(@RequestParam("room_idx") int room_idx) {
		ModelAndView mav = new ModelAndView();
		List<HashMap<String, Object>> list = chatService.getChatMessageList(room_idx);
		mav.addObject("list", list);
		mav.addObject("room_idx", room_idx);
		return mav;
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/chat/home";
	}
	
	@GetMapping("/loadPeople")
	@ResponseBody
	public Set<String> loadPeople() {
		return chatComponent.getSessionMap().keySet();
	}
	
	@PostMapping("/addMessage")
	@ResponseBody
	public int addMessage(@RequestBody ChatMessageDTO dto) {
		System.out.println(dto.getRoom_idx());
		System.out.println(dto.getWriter_idx());
		System.out.println(dto.getContent());
		return chatService.addMessage(dto);
	}
	
}
