package com.ischoolbar.programmer.service.admin.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.ischoolbar.programmer.dao.admin.JobDao;
import com.ischoolbar.programmer.entity.admin.Job;
import com.ischoolbar.programmer.service.admin.JobService;

/**
 * 职称的Service实现类
 * @author yanyan
 *
 */
@Service
public class JobServiceImpl implements JobService {

	@Autowired
	private JobDao jobDao;
	
	public int add(Job job) {
		return jobDao.add(job);
	}
	
	public List<Job> findAll(){
		return jobDao.findAll();
	}
	
	public List<Job> findAllPage(int page, int size){
		PageHelper.startPage(page, size);
		return jobDao.findAll();
	}
	
	public String findNameById(Long jobid) {
		return jobDao.findNameById(jobid);
	}
	
	public Long findIdByName(String job) {
		return jobDao.findIdByName(job);
	}
	
	public int addNumById(Long jobid) {
		return jobDao.addNumById(jobid);
	}
	public int subNumById(Long jobid) {
		return jobDao.subNumById(jobid);
	}
	
	public int delete(Long jobid) {
		return jobDao.delete(jobid);
	}

}
