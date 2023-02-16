package com.itbank.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.itbank.model.HashtagDTO;
import com.itbank.model.ImageDTO;
import com.itbank.model.PostDTO;
import com.itbank.model.UsersDTO;
import com.itbank.service.FollowService;
import com.itbank.service.MailService;
import com.itbank.service.PostService;
import com.itbank.service.UsersService;

@RestController
public class AjaxController {

	@Autowired FollowService followService;
	@Autowired UsersService userService;
	@Autowired PostService postService;
	
	@Autowired private MailService mailService;
	private HashMap<String, String> authNumberMap = new HashMap<String, String>();
	
	//아이디 중복체크
	@GetMapping("/idCheck/{id}")
	public int idCheck(@PathVariable("id") String id) {
		System.out.println(id);
		int cnt = userService.idCheck(id);
		return cnt;
	}
	
	// 인증코드 생성 후 이메일 보내기
	@GetMapping("/sendAuthNumber")
	public int sendMail(String email , String phone_number) throws IOException {
		Random ran = new Random();
		String authNumber = ran.nextInt(89999999) + 10000000 + "";
		int row = 0;
		
		// 메일 보내기전 사용자가 존재하는지 확인
		if(userService.emailFindUsers(email,phone_number) != 0 ) {
			
			row = mailService.sendMail(email, authNumber);
			authNumberMap.put(email, authNumber);
			return row = 1;
		}else {
			// 없다면 0을 반환하여 없는사용자라 멘트출력
			return row;			
		}
		
	}
	
	// 클라이언트에게 인증번호를 받은뒤 내가보낸 인증코드와 일치하는지 확인
	@PostMapping("/sendAuthNumber")
	public int codeCheck(@RequestBody HashMap<String, String> param) {		

		String storedAuthNumber = authNumberMap.get(param.get("email"));
		
		String inputAuthNumber = param.get("authNumber");

		boolean flag = storedAuthNumber.equals(inputAuthNumber);
		
		return flag ? 1 : 0;
	}
	
	// 아이디 중복확인
	@PostMapping("/nickNameCheck")
	public int nickNameCheck(String nick_name) {
		
		return userService.getUserNickName(nick_name);
	}
	
	// 전화번호 중복확인
	@PostMapping("/phoneNumberCheck")
	public int phoneNumberCheck(String phoneNumber) {
		return userService.getUserPhoneNumber(phoneNumber);
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

// 계정의 팔로잉 카운트를 반환
	@GetMapping("/countFollowing/{idx}")
	public int countFolloing(@PathVariable("idx") int idx) {
		int row = followService.countFollowing(idx);

		System.out.println(row);

		return row;
	}

	// 계정의 팔로워 카운트를 반환
	@GetMapping("/countFollower/{idx}")
	public int countFollower(@PathVariable("idx") int idx) {
		int row = followService.countFollower(idx);

//				System.out.println(row);

		return row;
	}

// 검색

	// 유저 검색
	@GetMapping("/usersSearch/{searchValue}")
	public List<UsersDTO> usersSearch(@PathVariable("searchValue") String searchValue) {
		System.out.println(searchValue);
			List<UsersDTO> list = userService.usersSearch(searchValue);
			return list;

	}
	
	// 해시 검색
	@GetMapping("/hashSearch/{searchValue}")
	public List<HashtagDTO> hashSearch(@PathVariable("searchValue") String searchValue) {	// 해시 서비스 따로 만들기 그래서 일단 유저서비스 DAO 돌려쓰겟습니다
		List<HashtagDTO> list = userService.hashSearch(searchValue);
		return list;
	}
	
	// 태그 검색 결과에 대한 스크롤 페이징
	@GetMapping("/getPostList/{hashtag}/{offset}")
	public List<ImageDTO> getPostList(@PathVariable("hashtag") String hashtag ,@PathVariable("offset") int offset) {
		HashMap<String, Object> tagOff = new HashMap<String, Object>();
		tagOff.put("hashtag", "#" + hashtag);
		tagOff.put("offset", offset);
		System.out.println(hashtag);
		System.out.println(offset);
		
		List<ImageDTO> list = postService.getPostList(tagOff);
		System.out.println(list);
		list.forEach(dto -> {
			String fileName = dto.getFile_name();
			fileName = fileName.split(",")[0];
			dto.setFile_name(fileName);
			System.out.println(fileName);
		});
		
		return list;
	}
	
}



