package com.ischoolbar.programmer.service.admin;

import java.util.List;

import org.springframework.stereotype.Service;

import com.ischoolbar.programmer.entity.admin.Awards;


/**
 * 教学获奖的Service
 * @author twl
 *
 */
@Service
public interface ZAwardsService {
	public int add(Awards award);
	public List<Awards> findAll();
	public Awards queryById(Long award_id);
	public List<Awards> queryByKeywords(String keywords);
}
