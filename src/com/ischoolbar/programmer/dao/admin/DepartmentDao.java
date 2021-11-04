package com.ischoolbar.programmer.dao.admin;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.ischoolbar.programmer.entity.admin.Department;

/**
 * ²¿ÃÅµÄdao²ã
 * @author yanyan
 *
 */
@Repository
public interface DepartmentDao {
	public int add(Department department);
	public List<Department> findAll();
	public String findNameById(Long deid);
	public Long findIdByName(String department);
	public int addNumById(Long deid);
	public int subNumById(Long deid);
	public int delete(Long deid);
}
