package com.ischoolbar.programmer.service.admin.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ischoolbar.programmer.dao.admin.UserDao;
import com.ischoolbar.programmer.entity.admin.User;
import com.ischoolbar.programmer.service.admin.UserService;
/**
 * User用户serviceimpl
 * @author 13212
 *
 */
@Service
public class UserServicelmpl implements UserService {

	@Autowired
	private UserDao userDao;
	
	public int add(User user) {
		return userDao.add(user);
	}
	
	public User findUserByUsername(String username) {
		return userDao.findUserByUsername(username);
	}
	
	public Long findIdByUsername(String username){
		return userDao.findIdByUsername(username);
	}
	
	public int delete(Long id) {
		return userDao.delete(id);
	}
	
	

}
