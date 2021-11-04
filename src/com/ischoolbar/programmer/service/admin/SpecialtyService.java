package com.ischoolbar.programmer.service.admin;

import java.util.List;

import org.springframework.stereotype.Service;

import com.ischoolbar.programmer.entity.admin.Specialty;

/**
 * ×¨ÒµµÄService
 * @author yanyan
 *
 */
@Service
public interface SpecialtyService {
	public int add(Specialty specialty);
	public List<Specialty> findAll();
	public List<Specialty> findAllPage(int page, int size);
	public String findNameById(Long spid);
	public Long findIdByName(String specialty);
	public int addNumById(Long spid);
	public int subNumById(Long spid);
	public int delete(Long spid);
}
