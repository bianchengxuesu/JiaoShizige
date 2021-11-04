package com.ischoolbar.programmer.dao.admin;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.ischoolbar.programmer.entity.admin.Patent;

/**
 * ×¨ÀûµÄdao
 * @author twl
 *
 */
@Repository
public interface ZPatentDao {
	public int add(Patent patent);
	public List<Patent> findAll();
	public Patent queryById(Long patent_id);
}
