package com.itbank.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.itbank.service.FollowService;
import com.itbank.service.MailService;
import com.itbank.service.UsersService;

@RestController
public class AjaxController {

	@Autowired UsersService userService;
	@Autowired FollowService followService;
	
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
	

	// 팔로우가 되어있는지 확인
	@GetMapping("/findFollow/{idx}/{myIdx}")
	public int findFollow(@PathVariable("idx") int idx, @PathVariable("myIdx") int myIdx) {
		System.out.println(idx);
		System.out.println(myIdx);
		HashMap<String, Integer> idxHash = new HashMap<String, Integer>();
		idxHash.put("idx", idx);
		idxHash.put("myIdx", myIdx);
		
		int row = followService.findFollow(idxHash);
		
		return row;
	}
	
	// 팔로우
	@GetMapping("/follow/{idx}/{myIdx}") // 걔 팔로우 버튼 누르면 팔로우 페이지에서는 걔의 정보를 담고 있던 것. 버튼 누르면 걔의 idx 던져줌
	public int follow(@PathVariable int idx, @PathVariable int myIdx) {
		HashMap<String, Integer> idxhash = new HashMap<String, Integer>();
		idxhash.put("idx", idx);
		idxhash.put("myIdx", myIdx);

		int row = followService.addFollow(idxhash);
		System.out.println(row != 0 ? "팔로우 성공" : "팔로우 실패");

		return row;
	}
	
	// 언팔
	@GetMapping("/unfollow/{idx}/{myIdx}") // 걔 팔로우 버튼 누르면 팔로우 페이지에서는 걔의 정보를 담고 있던 것. 버튼 누르면 걔의 idx 던져줌
	public int unfollow(@PathVariable int idx, @PathVariable int myIdx) {
		HashMap<String, Integer> idxhash = new HashMap<String, Integer>();
		idxhash.put("idx", idx);
		idxhash.put("myIdx", myIdx);

		int row = followService.unFollow(idxhash);
		System.out.println(row != 0 ? "언팔로우 성공" : "언팔로우 실패");

		return row;
	}
	// 아이디 중복확인
	@PostMapping("/nickNameCheck")
	public int nickNameCheck(String nick_name) {
		
		return userService.getUserNickName(nick_name);
	}
	
	@PostMapping("/phoneNumberCheck")
	public int phoneNumberCheck(String phoneNumber) {
		return userService.getUserPhoneNumber(phoneNumber);

	}
}

