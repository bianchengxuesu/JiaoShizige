package com.ischoolbar.programmer.service.admin;

import java.util.List;

import org.springframework.stereotype.Service;

import com.ischoolbar.programmer.entity.admin.Department;

/**
 * ²¿ÃÅµÄService
 * @author yanyan
 *
 */
@Service
public interface DepartmentService {
	public int add(Department department);
	public List<Department> findAll();
	public List<Department> findAllPage(int page, int size);
	public String findNameById(Long deid);
	public Long findIdByName(String department);
	public int addNumById(Long deid);
	public int subNumById(Long deid);
	public int delete(Long deid);
}
