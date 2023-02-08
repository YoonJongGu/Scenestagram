package com.itbank.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.model.UsersDTO;
import com.itbank.repository.UsersDAO;

@Service
public class UsersService {	
	
	@Autowired private UsersDAO usersDAO;
	
	public int insert(UsersDTO dto) {
		return usersDAO.insert(dto);
	}

	public UsersDTO login(UsersDTO dto) {
		return usersDAO.login(dto);
	}
	
	public int withdrawal(int idx) {
		return usersDAO.updateUserStatus(idx);
	}

	public int infoModify(UsersDTO dto) {
		return usersDAO.infoUpdate(dto);
	}

	public int profileModify(UsersDTO dto) {
		return usersDAO.updateUserProfile(dto);
	}

	public UsersDTO getUser(int idx) {		
		return usersDAO.selectOne(idx);
	}

	public int idCheck(String id) {
		return usersDAO.idCheck(id);
	}

	public List<UsersDTO> getList() {
		return usersDAO.getList();
	}

	public String findId(UsersDTO dto) {
		return usersDAO.findId(dto);
	}

	public int replacePw(UsersDTO dto) {
		return usersDAO.updatePw(dto);
	}
}
