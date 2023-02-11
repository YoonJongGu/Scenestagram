package com.itbank.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.model.UsersDTO;
import com.itbank.service.UserProfile;
import com.itbank.service.UsersService;

@Controller
@RequestMapping("/users")
public class UsersController {
	
	@Autowired private UsersService usersService;
	@Autowired private UserProfile userProfile;
	
	// 로그인
	@GetMapping("/login")
	public void ge() {}
	
	@PostMapping("/login")
	public String login(UsersDTO dto, HttpSession session) {
		UsersDTO login = usersService.login(dto);
		session.setAttribute("login", login);
		return "redirect:/users/myPage";
	}
	// 로그인 end
	
	//로그아웃
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/users/login";
	}
	
	// 회원가입
	@GetMapping("/join")
	public void join() {}
	
	@PostMapping("/join")
	public String join(UsersDTO dto) {
		int row = usersService.insert(dto);
		System.out.println(row != 0 ? "가입 성공" : "가입 실패");
		return "redirect:/";
	}
	//회원가입 end
	
	@GetMapping("/myPage")
	public void myPage() {}
	
	//프로필 수정
	@GetMapping("/profileModify")
	public void profileModify() {
	}
	@PostMapping("/profileModify")
	public void profileModify(UsersDTO dto ,HttpSession session ) {
		if(dto.getUser_img_file().getSize() != 0 ) {
			dto.setUser_img(dto.getUser_img_file().getOriginalFilename());
			userProfile.saveProfile(dto.getUser_img_file());
			
		}
		int row = usersService.profileModify(dto);
		session.setAttribute("login", usersService.getUser(dto.getIdx()));
		System.out.println(row ==  0 ? "프로필 수정실패" : "프로필 수정성공");
	}
	// 프로필 수정 end
	
	//개인정보 수정
	@GetMapping("/infoModify")
	public void userModify() {
	}
	@PostMapping("/infoModify")
	public void modify(UsersDTO dto,HttpSession session) {
		int row = usersService.infoModify(dto);
		System.out.println(row ==  0 ? "회원정보 수정실패" : "회원정보 수정성공");
		session.setAttribute("login", usersService.getUser(dto.getIdx()));
	}
	//개인정보 수정 end
	
	//회원탈퇴
	@GetMapping("/withdraw")
	public String withDrawal(HttpSession session) {
		UsersDTO dto = (UsersDTO)session.getAttribute("login");
		int row = usersService.withdrawal(dto.getIdx());
		System.out.println(row == 0 ? "삭제실패" : "삭제성공");
		session.setAttribute("login", null);
		return "redirect/users/login";
	}
	//회원탈퇴 end
	
	// 비밀번호 찾기
	@GetMapping("/findPw")
	public void moveFindPw() {
	}
	
	// 아이디 찾기
	@GetMapping("/findId")
	public void findId() {}
	
	@PostMapping("/findId")
	public ModelAndView findId(UsersDTO dto) {
		ModelAndView mav = new ModelAndView("/users/idTest");
		String id = usersService.findId(dto);
		
		mav.addObject("id", id);
		
		return mav;
	}
	
	// 02-08
	@GetMapping("/usersList")
	public ModelAndView usersList() {
		ModelAndView mav = new ModelAndView("/users/usersList");
		List<UsersDTO> list = usersService.getList();
		mav.addObject("list", list);
		return mav;
	}
	
	// 02-08
	@GetMapping("/viewDetail/{idx}/{myIdx}")
	public ModelAndView viewDetail(@PathVariable("idx") int idx) {
		ModelAndView mav = new ModelAndView("/users/viewDetail");
		UsersDTO dto = usersService.getUser(idx);
		mav.addObject("dto", dto);
		return mav;
	}
	
	@GetMapping("/search")
	public void search() {}
	
	@PostMapping("/search")
	public ModelAndView search(String search) {
		ModelAndView mav = new ModelAndView("/users/search");
		
		if(search.contains("#") == false) {
			List<UsersDTO> list = usersService.usersSearch(search);
			mav.addObject("list", list);
		}
		else {
			
		}
		return mav;
	}
	
	
}
