package com.ischoolbar.programmer.service.admin;

import java.util.List;

import org.springframework.stereotype.Service;

import com.ischoolbar.programmer.entity.admin.Job;

/**
 * Ö°³ÆµÄservice
 * @author yanyan
 *
 */
@Service
public interface JobService {
	public int add(Job job);
	public List<Job> findAll();
	public List<Job> findAllPage(int page, int size);
	public String findNameById(Long jobid);
	public Long findIdByName(String job);
	public int addNumById(Long jobid);
	public int subNumById(Long jobid);
	public int delete(Long jobid);
}
