package com.ischoolbar.programmer.service.admin.impl;

import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ischoolbar.programmer.dao.admin.ZAwardsDao;
import com.ischoolbar.programmer.entity.admin.Awards;
import com.ischoolbar.programmer.service.admin.ZAwardsService;


/**
 * 教学获奖AwardsService实现类
 * @author twl
 *
 */
@Service
public class ZAwardsServiceImpl implements ZAwardsService{

	@Autowired
	private ZAwardsDao zAwardsDao;
	
	@Override
	public int add(Awards award) {
		return zAwardsDao.add(award);
	}

	@Override
	public List<Awards> findAll() {
		return zAwardsDao.findAll();
	}

	@Override
	public Awards queryById(Long award_id) {
		return zAwardsDao.queryById(award_id);
	}

	@Override
	public List<Awards> queryByKeywords(String keywords) {
		return zAwardsDao.queryByKeywords(keywords);
	}
	
}
