package com.ischoolbar.programmer.dao.admin;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.ischoolbar.programmer.entity.admin.Specialty;
/**
 * ×¨ÒµµÄDao²ã
 * @author yanyan
 *
 */
@Repository
public interface SpecialtyDao {
	public int add(Specialty specialty);
	public List<Specialty> findAll();
	public String findNameById(Long spid);
	public Long findIdByName(String specialty);
	public int addNumById(Long spid);
	public int subNumById(Long spid);
	public int delete(Long spid);
}
