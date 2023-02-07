package com.itbank.service;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.itbank.model.ImageDTO;
import com.itbank.model.PostDTO;
import com.itbank.repository.PostDAO;

@Service
public class PostService {
	
	@Autowired private PostDAO postDAO;
	
	private final String image_directory = "C:\\post_upload";
	
	public PostService() {
		File dir = new File(image_directory);
		if(dir.exists() == false) {
			dir.mkdirs();
		}
	}
	
	private void upload(MultipartFile f) {
		File dest = new File(image_directory, f.getOriginalFilename());
		
		try {
			f.transferTo(dest);
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
	}
	
	private String makeFileName(PostDTO dto) {
		String fileName = "";
		
		for(MultipartFile f : dto.getImage_file()) {
			upload(f);
			fileName += f.getOriginalFilename();
			fileName += ",";
		}
		
		fileName = fileName.substring(0, fileName.lastIndexOf(","));
		
		return fileName;
	}
	
	private ArrayList<Integer> searchHash(String content) {	
		// 본문에서 해쉬태그를 찾아서 hashList에 저장한다
		ArrayList<String> hashList = new ArrayList<String>();
		StringBuilder sb_hash = new StringBuilder();
		sb_hash.append("#");
		
		String[] hashContent = content.split("#");
		
		for(int i = 1; i < hashContent.length; i++) {
			String tmp = hashContent[i];
			for(int j = 0; j < tmp.length(); j++) {
				char ch = tmp.charAt(j);
				if((ch >= 48 && ch <= 57) || (ch >= 65 && ch <= 90) || (ch >= 97 && ch <= 122) || ch == 95 || ch > 127) {
					sb_hash.append(ch + "");
				}
				else {
					break;
				}
			}
			if(sb_hash.toString().length() != 0) {
				hashList.add(sb_hash.toString());
			}			
			sb_hash = new StringBuilder();
			sb_hash.append("#");
		}
		
		// 찾은 해쉬태그가 현재 테이블에 있는지 확인을 하고 결과를 searchHashList에 저장한다 	
		ArrayList<Integer> searchHashList = new ArrayList<Integer>();
		
		hashList.forEach(tag -> searchHashList.add(postDAO.searchHashTag(tag)));
		
		System.out.println(searchHashList);
		
		// 해쉬태그가 없을 경우에만 추가를 진행한다
		for(int i = 0; i < hashList.size(); i++) {
			if(searchHashList.get(i) == 0) {
				postDAO.insertHashTag(hashList.get(i));
			}
		}
		
		// 게시글 해쉬태그에 저장하기 위해 해쉬태그 테이블에서 idx를 찾아서 반환한다
		ArrayList<Integer> hashIDXList = new ArrayList<Integer>();
		
		hashList.forEach(tag -> hashIDXList.add(postDAO.getHashIDX(tag)));
		
		System.out.println(hashIDXList);
		
		return hashIDXList;
	}
	
	private ArrayList<Integer> searchUser(String content) {
		ArrayList<String> userList = new ArrayList<String>();
		StringBuilder sb_user = new StringBuilder();
		sb_user.append("@");
		
		String[] userContent = content.split("@");
		
		for(int i = 1; i < userContent.length; i++) {
			String tmp = userContent[i];
			for(int j = 0; j < tmp.length(); j++) {
				char ch = tmp.charAt(j);
				if((ch >= 48 && ch <= 57) || (ch >= 65 && ch <= 90) || (ch >= 97 && ch <= 122) || ch == 95 || ch > 127) {
					sb_user.append(ch + "");
				}
				else {
					break;
				}
			}
			if(sb_user.toString().length() != 0) {
				userList.add(sb_user.toString());
			}			
			sb_user = new StringBuilder();
			sb_user.append("@");
		}
		
		ArrayList<Integer> searchHashList = new ArrayList<Integer>();
		
		userList.forEach(tag -> searchHashList.add(postDAO.searchHashTag(tag)));
		
		for(int i = 0; i < userList.size(); i++) {
			if(searchHashList.get(i) == 0) {
				postDAO.insertHashTag(userList.get(i));
			}
		}
		
		userList.forEach(tag -> postDAO.insertHashTag(tag));
		
		ArrayList<Integer> userIDXList = new ArrayList<Integer>();
		
		userList.forEach(tag -> userIDXList.add(postDAO.getHashIDX(tag)));
		
		System.out.println(userIDXList);
		
		return userIDXList;
	}
	
	private ArrayList<Integer> selectUsers(String content) {
		ArrayList<String> userList = new ArrayList<String>();
		StringBuilder sb_user = new StringBuilder();		
		
		String[] userContent = content.split("@");
		
		for(int i = 1; i < userContent.length; i++) {
			String tmp = userContent[i];
			for(int j = 0; j < tmp.length(); j++) {
				char ch = tmp.charAt(j);
				if((ch >= 48 && ch <= 57) || (ch >= 65 && ch <= 90) || (ch >= 97 && ch <= 122) || ch == 95 || ch > 127) {
					sb_user.append(ch + "");
				}
				else {
					break;
				}
			}
			if(sb_user.toString().length() != 0) {
				userList.add(sb_user.toString());
			}			
			sb_user = new StringBuilder();			
		}
		
		ArrayList<Integer> usersList = new ArrayList<Integer>();
		
		userList.forEach(user -> usersList.add(postDAO.getUsersIDX(user)));
		
		System.out.println(usersList);
		
		return usersList;
	}

		
	public List<ImageDTO> getImage() {
		return postDAO.selectImage();
	}

	public PostDTO getDetail(int post_idx) {
		return postDAO.selectDetail(post_idx);
	}
		
	public String getImageName(int post_idx) {
		return postDAO.selectImageName(post_idx);
	}

	public int updateViews(int post_idx) {
		return postDAO.updateViews(post_idx);
	}

	public int addPost(PostDTO dto) {
		List<MultipartFile> fileList = dto.getImage_file();
		fileList.removeIf(file -> file.getSize() == 0);
		dto.setImage_file(fileList);
		
		int insert_post = postDAO.insertPost(dto);
		
		if(insert_post != 1) return 0;		
		
		int post_idx = postDAO.getIDX(dto.getUsers_idx());
		
		String fileName = makeFileName(dto);
		
		ImageDTO imgDTO = new ImageDTO();
		imgDTO.setPost_idx(post_idx);
		imgDTO.setFile_name(fileName);
		
		int insert_img = postDAO.insertImage(imgDTO);
		
		if(insert_img != 1) return 0;
		
		if(dto.getContent().contains("#")) {
			ArrayList<Integer> hashIDXList = searchHash(dto.getContent());
			
			hashIDXList.forEach(tag -> {
				HashMap<String, Integer> idxMap = new HashMap<String, Integer>();
				idxMap.put("post_idx", post_idx);
				idxMap.put("tag", tag);
				postDAO.insertPostHashTag(idxMap);
			});
		}
		
		if(dto.getContent().contains("@")) {
			ArrayList<Integer> userIDXList = searchUser(dto.getContent());
			ArrayList<Integer> usersList = selectUsers(dto.getContent());
			
			userIDXList.forEach(tag -> {
				HashMap<String, Integer> idxMap = new HashMap<String, Integer>();
				idxMap.put("post_idx", post_idx);
				idxMap.put("tag", tag);
				postDAO.insertPostHashTag(idxMap);
			});
			
			usersList.forEach(user -> {
				HashMap<String, Integer> idxMap = new HashMap<String, Integer>();
				idxMap.put("post_idx", post_idx);
				idxMap.put("user", user);
				postDAO.insertUserTag(idxMap);
			});
		}
		
		return 1;
	}

	public int getLikeStatus(int post_idx) {
		int users_idx = 1;
		HashMap<String, Integer> likeList = new HashMap<String, Integer>();
		likeList.put("users_idx", users_idx);
		likeList.put("post_idx", post_idx);		
		return postDAO.selectLikeStatus(likeList);
	}

	public int insertLike(int post_idx) {
		int users_idx = 1;
		HashMap<String, Integer> likeList = new HashMap<String, Integer>();
		likeList.put("users_idx", users_idx);
		likeList.put("post_idx", post_idx);
		return postDAO.insertLike(likeList);
	}

	public int deleteLike(int post_idx) {
		int users_idx = 1;
		HashMap<String, Integer> likeList = new HashMap<String, Integer>();
		likeList.put("users_idx", users_idx);
		likeList.put("post_idx", post_idx);
		return postDAO.deleteLike(likeList);
	}

	


	

}
