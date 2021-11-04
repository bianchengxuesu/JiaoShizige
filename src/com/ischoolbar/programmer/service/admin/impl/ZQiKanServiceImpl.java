package com.ischoolbar.programmer.service.admin.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ischoolbar.programmer.dao.admin.ZQiKanDao;
import com.ischoolbar.programmer.entity.admin.Qikanwenzhang;
import com.ischoolbar.programmer.service.admin.ZQiKanService;


/**
 * 课程ZQiKanService实现类
 * @author 13212
 *
 */
@Service
public class ZQiKanServiceImpl implements ZQiKanService {

	@Autowired
	private ZQiKanDao zqikanDao;
	
	
	public int add(Qikanwenzhang qikanwenzhang) {
		// TODO Auto-generated method stub
		return zqikanDao.add(qikanwenzhang);
	}
	public List<Qikanwenzhang> findAll() {
		// TODO Auto-generated method stub
		return zqikanDao.findAll();
	}
	@Override
	public Qikanwenzhang queryById(Long pername) {
		// TODO Auto-generated method stub
		return zqikanDao.queryById(pername);
	}

}
