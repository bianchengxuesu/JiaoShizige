package com.ischoolbar.programmer.service.admin;

import java.util.List;

import org.springframework.stereotype.Service;

import com.ischoolbar.programmer.entity.admin.Patent;

/**
 * ×¨ÀûµÄService
 * @author twl
 *
 */
@Service
public interface ZPatentService {
	public int add(Patent patent);
	public List<Patent> findAll();
	public Patent queryById(Long patent_id);
}
