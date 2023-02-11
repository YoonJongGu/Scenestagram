package com.itbank.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.model.ImageDTO;
import com.itbank.model.PostDTO;
import com.itbank.service.PostService;

@Controller
@RequestMapping("/post")
public class PostController {
	
	@Autowired private PostService postService;
	
	@GetMapping("/list")
	public ModelAndView list() {
		ModelAndView mav = new ModelAndView();
		List<ImageDTO> list = postService.getImage();		
		list.forEach(dto -> {
			String newFileName = dto.getFile_name();
			newFileName = newFileName.split(",")[0];
			dto.setFile_name(newFileName);
			System.out.println(newFileName);
		});
		mav.addObject("list", list);		
		return mav;
	}
	
	@GetMapping("/detail/{post_idx}")
	public ModelAndView detail(@PathVariable("post_idx") int post_idx) {
		ModelAndView mav = new ModelAndView("/post/detail");
		PostDTO post_dto = postService.getDetail(post_idx);
		String imageFileName = postService.getImageName(post_idx);
		int row = postService.updateViews(post_idx);
		System.out.println(row == 1 ? "카운트 성공" : "카운트 실패");
		System.out.println(imageFileName);
		mav.addObject("dto", post_dto);
		mav.addObject("image", imageFileName);		
		return mav;
	}
	
	@GetMapping("/add")
	public void add() {}
	
	@PostMapping("/add")
	public String add(PostDTO dto) {
		int row = postService.addPost(dto);		
		System.out.println(row == 1 ? "추가 성공" : "추가 실패");
		return "redirect:/post/list";
	}
	
	@GetMapping("/like/status/{post_idx}")
	@ResponseBody
	public int likeStatus(@PathVariable("post_idx") int post_idx) {
		int like = postService.getLikeStatus(post_idx);
		return like;
	}
	
	@GetMapping("/like/{post_idx}")
	@ResponseBody
	public int like(@PathVariable("post_idx") int post_idx) {		
		int row = 0;
		int like = postService.getLikeStatus(post_idx);
		if(like == 0) {
			row = postService.insertLike(post_idx);
			like = 1;
		}
		else {
			row = postService.deleteLike(post_idx);
			like = 0;
		}
		System.out.println(row == 1 ? "적용 성공" : "적용 실패");		
		
		return like;
	}
}
