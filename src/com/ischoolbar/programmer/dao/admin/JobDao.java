package com.ischoolbar.programmer.dao.admin;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.ischoolbar.programmer.entity.admin.Job;

/**
 * Ö°³ÆµÄdao²ã
 * @author yanyan
 *
 */
@Repository
public interface JobDao {
	public int add(Job job);
	public List<Job> findAll();
	public String findNameById(Long jobid);
	public Long findIdByName(String job);
	public int addNumById(Long jobid);
	public int subNumById(Long jobid);
	public int delete(Long jobid);
}
