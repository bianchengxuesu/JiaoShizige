package com.ischoolbar.programmer.dao.admin;

import org.springframework.stereotype.Repository;

import com.ischoolbar.programmer.entity.admin.User;

/**
 * user用户dao
 * @author 13212
 *
 */
@Repository
public interface UserDao {
	public int add(User user);
	public User findUserByUsername(String username);
	public Long findIdByUsername(String username);
	public int delete(Long id);
	
}
