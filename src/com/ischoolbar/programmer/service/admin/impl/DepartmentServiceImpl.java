package com.ischoolbar.programmer.service.admin.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.ischoolbar.programmer.dao.admin.DepartmentDao;
import com.ischoolbar.programmer.entity.admin.Department;
import com.ischoolbar.programmer.service.admin.DepartmentService;

/**
 * 部门的Service实现类
 * @author yanyan
 *
 */
@Service
public class DepartmentServiceImpl implements DepartmentService {

	@Autowired
	private DepartmentDao departmentDao;
	
	public int add(Department department) {
		return departmentDao.add(department);
	}
	
	public List<Department> findAll(){
		return departmentDao.findAll();
	}
	
	public List<Department> findAllPage(int page, int size){
		PageHelper.startPage(page, size);
		return departmentDao.findAll();
	}
	
	public String findNameById(Long deid) {
		return departmentDao.findNameById(deid);
	}
	
	public Long findIdByName(String department) {
		return departmentDao.findIdByName(department);
	}
	
	public int addNumById(Long deid) {
		return departmentDao.addNumById(deid);
	}
	
	public int subNumById(Long deid) {
		return departmentDao.subNumById(deid);
	}
	
	public int delete(Long deid) {
		return departmentDao.delete(deid);
	}

}
