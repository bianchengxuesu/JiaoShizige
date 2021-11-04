package com.ischoolbar.programmer.service.admin;

import org.springframework.stereotype.Service;

import com.ischoolbar.programmer.entity.admin.User;

/**
 * user用户service
 * @author 13212
 *
 */

@Service
public interface UserService {
	public int add(User user);
	public User findUserByUsername(String username);
	public Long findIdByUsername(String username);
	public int delete(Long id);
}
