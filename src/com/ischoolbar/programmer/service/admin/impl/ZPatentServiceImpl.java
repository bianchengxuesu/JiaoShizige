package com.ischoolbar.programmer.service.admin.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ischoolbar.programmer.dao.admin.ZPatentDao;
import com.ischoolbar.programmer.entity.admin.Patent;
import com.ischoolbar.programmer.service.admin.ZPatentService;

@Service
public class ZPatentServiceImpl implements ZPatentService{
	@Autowired
	private ZPatentDao zPatentDao;
	
	@Override
	public int add(Patent patent) {
		return zPatentDao.add(patent);
	}

	@Override
	public List<Patent> findAll() {
		return zPatentDao.findAll();
	}

	@Override
	public Patent queryById(Long patent_id) {
		return zPatentDao.queryById(patent_id);
	}

}
