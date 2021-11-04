package com.ischoolbar.programmer.service.admin.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ischoolbar.programmer.dao.admin.ZPublicationsDao;
import com.ischoolbar.programmer.entity.admin.Publications;
import com.ischoolbar.programmer.service.admin.ZPublicationsService;
@Service
public class ZPublicationsServiceImpl implements ZPublicationsService{

	@Autowired
	private ZPublicationsDao zPublicationsDao;
	
	@Override
	public int add(Publications publications) {
		
		return zPublicationsDao.add(publications);
	}

	@Override
	public List<Publications> findAll() {
		return zPublicationsDao.findAll();
	}

	@Override
	public Publications queryById(Long id) {
		return zPublicationsDao.queryById(id);
	}

}
