package com.ischoolbar.programmer.service.admin.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.ischoolbar.programmer.dao.admin.SpecialtyDao;
import com.ischoolbar.programmer.entity.admin.Specialty;
import com.ischoolbar.programmer.service.admin.SpecialtyService;

/**
 * 专业的Service实现类
 * @author yanyan
 *
 */
@Service
public class SpecialtyServiceImpl implements SpecialtyService {

	@Autowired
	private SpecialtyDao specialtyDao;
	
	public int add(Specialty specialty) {
		return specialtyDao.add(specialty);
	}
	
	public List<Specialty> findAll(){
		return specialtyDao.findAll();
	}
	
	public List<Specialty> findAllPage(int page, int size){
		PageHelper.startPage(page, size);
		return specialtyDao.findAll();
	}
	
	public String findNameById(Long spid) {
		return specialtyDao.findNameById(spid);
	}
	
	public Long findIdByName(String specialty) {
		return specialtyDao.findIdByName(specialty);
	}
	
	public int addNumById(Long spid) {
		return specialtyDao.addNumById(spid);
	}
	
	public int subNumById(Long spid) {
		return specialtyDao.subNumById(spid);
	}
	
	public int delete(Long spid) {
		return specialtyDao.delete(spid);
	}
}
