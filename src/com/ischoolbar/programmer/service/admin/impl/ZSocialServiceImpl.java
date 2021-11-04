package com.ischoolbar.programmer.service.admin.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ischoolbar.programmer.dao.admin.ZSocialServiceDao;
import com.ischoolbar.programmer.entity.admin.SocialService;
import com.ischoolbar.programmer.service.admin.ZSocialService;

@Service
public class ZSocialServiceImpl implements ZSocialService{
	
	@Autowired
	private ZSocialServiceDao zSocialServiceDao;
	
	@Override
	public int add(SocialService socialService) {
		return zSocialServiceDao.add(socialService);
	}

	@Override
	public List<SocialService> findAll() {
		return zSocialServiceDao.findAll();
	}

	@Override
	public SocialService queryById(Long id) {
		return zSocialServiceDao.queryById(id);
	}

}
