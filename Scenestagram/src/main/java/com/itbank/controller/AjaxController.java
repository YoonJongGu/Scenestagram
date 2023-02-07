package com.itbank.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.itbank.service.MailService;
import com.itbank.service.UsersService;

@RestController
public class AjaxController {

	@Autowired UsersService userService;
	
	@Autowired private MailService mailService;
	private HashMap<String, String> authNumberMap = new HashMap<String, String>();
	
	//아이디 중복체크
	@GetMapping("/idCheck/{id}")
	public int idCheck(@PathVariable("id") String id) {
		System.out.println(id);
		int cnt = userService.idCheck(id);
		return cnt;
	}
	
	//인증코드 생성 후 이메일 보내기
	@GetMapping("/sendAuthNumber")
	public int sendMail(String email) throws IOException {
		Random ran = new Random();
		String authNumber = ran.nextInt(89999999) + 10000000 + "";
		System.out.println(authNumber);
		int row = mailService.sendMail(email,authNumber);
		if(row == 1) {
			authNumberMap.put(email,authNumber);
		}
		return row;
	}
	
	// 클라이언트에게 인증번호를 받은뒤 내가보낸 인증코드와 일치하는지 확인
	@PostMapping("/sendAuthNumber")
	public int codeCheck(@RequestBody HashMap<String, String> param) {		

		String storedAuthNumber = authNumberMap.get(param.get("email"));
		
		String inputAuthNumber = param.get("authNumber");

		boolean flag = storedAuthNumber.equals(inputAuthNumber);
		
		return flag ? 1 : 0;
	}
}

