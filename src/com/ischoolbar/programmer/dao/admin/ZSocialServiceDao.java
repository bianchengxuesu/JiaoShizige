package com.ischoolbar.programmer.dao.admin;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.ischoolbar.programmer.entity.admin.SocialService;

/**
 * 社会兼职的dao
 * @author twl
 *
 */
@Repository
public interface ZSocialServiceDao {
	public int add(SocialService ss);
	public List<SocialService> findAll();
	public SocialService queryById(Long ssid);
}
