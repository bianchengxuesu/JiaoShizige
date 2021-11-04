package com.ischoolbar.programmer.service.admin.impl;
/**
 * 教学贡献service实现类
 */
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ischoolbar.programmer.dao.admin.GongXianDao;
import com.ischoolbar.programmer.entity.admin.Jiaoxuegongxian;
import com.ischoolbar.programmer.service.admin.GongXianService;

@Service
public class GongXianServiceImpl implements GongXianService {

	
	@Autowired
	private GongXianDao gongxianDao;
	
	public int add(Jiaoxuegongxian jiaoxuegongxian) {
		// TODO Auto-generated method stub
		return gongxianDao.add(jiaoxuegongxian);
	}

	public int edit(Jiaoxuegongxian jiaoxuegongxian) {
		// TODO Auto-generated method stub
		return gongxianDao.edit(jiaoxuegongxian);
	}

	public int delete(Long id) {
		// TODO Auto-generated method stub
		return gongxianDao.delete(id);
	}

	public List<Jiaoxuegongxian> findList(Map<String, Object> queryMap) {
		// TODO Auto-generated method stub
		return gongxianDao.findList(queryMap);
	}

	public List<Jiaoxuegongxian> findAll() {
		// TODO Auto-generated method stub
		return gongxianDao.findAll();
	}

	public List<Jiaoxuegongxian> findAllByCourseOrTeacher(String KeyWord){
		// TODO Auto-generated method stub
		return gongxianDao.findAllByCourseOrTeacher(KeyWord);
	}
	
	public Integer getTotal(Map<String, Object> queryMap) {
		// TODO Auto-generated method stub
		return gongxianDao.getTotal(queryMap);
	}
	public Jiaoxuegongxian findById(Long id) {
		// TODO Auto-generated method stub
		return gongxianDao.findById(id);
	}

}
