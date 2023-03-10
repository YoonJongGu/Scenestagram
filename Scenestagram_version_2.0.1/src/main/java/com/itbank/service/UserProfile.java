package com.itbank.service;

import java.io.File;
import java.io.IOException;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class UserProfile {
	
	private  final String userProfile = "C:\\userProfile";
	
	public UserProfile() {
		File dir= new File(userProfile);
		if(dir.exists()==false) {
			dir.mkdirs();
		}	
	}
	
	public void saveProfile(MultipartFile user_img_file) {
		File dest = new File(userProfile,user_img_file.getOriginalFilename() );
		try {
			user_img_file.transferTo(dest);
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
}