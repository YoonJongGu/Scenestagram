package com.itbank.repository;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.itbank.model.ImageDTO;
import com.itbank.model.PostDTO;

@Repository
public interface PostDAO {

	List<ImageDTO> selectImage();
	
	PostDTO selectDetail(int post_idx);

	String selectImageName(int post_idx);

	int updateViews(int post_idx);

	int insertPost(PostDTO dto);

	int getMaxIDX(int users_idx);

	int insertImage(ImageDTO imgDTO);
	
	Integer getHashIDX(String tag);

	int insertPostHashTag(HashMap<String, Integer> idxMap);	

	Integer getUsersIDX(String user);	
	
	int insertUserTag(HashMap<String, Integer> idxMap);

	int selectLikeStatus(HashMap<String, Integer> likeList);

	int insertLike(HashMap<String, Integer> likeList);

	int deleteLike(HashMap<String, Integer> likeList);

	int insertHashTag(String tag);

	int searchHashTag(String tag);

	List<Integer> selectPostIDX(int users_idx);

	ImageDTO selectPostImage(Integer post_idx);

	int updateStatus(int post_idx);

	int selectLikeCount(int post_idx);

	int deletePostHashTag(int post_idx);

	int updatePost(PostDTO dto);
	
}
