package com.itbank.repository;

import java.util.HashMap;

import org.springframework.stereotype.Repository;

@Repository
public interface FollowDAO {

	int addFollow(HashMap<String, Integer> idxhash);

	int unFollow(HashMap<String, Integer> idxhash);
	
	
	
}
