package com.ischoolbar.programmer.dao.admin;

import java.util.List;


import org.springframework.stereotype.Repository;

import com.ischoolbar.programmer.entity.admin.Awards;

/**
 * 教学成果的dao
 * @author twl
 *
 */
@Repository
public interface ZAwardsDao {
	public int add(Awards award);
	public List<Awards> findAll();
	public Awards queryById(Long award_id);
	public List<Awards> queryByKeywords(String keywords);
}
