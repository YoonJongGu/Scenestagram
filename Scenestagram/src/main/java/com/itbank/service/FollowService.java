package com.itbank.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.repository.FollowDAO;

@Service
public class FollowService {

	@Autowired private FollowDAO followDAO;

	public int addFollow(HashMap<String, Integer> idxhash) {
		return followDAO.addFollow(idxhash);
	}

	public int unFollow(HashMap<String, Integer> idxhash) {
		return followDAO.unFollow(idxhash);
	}

}
