package com.ischoolbar.programmer.dao.admin;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.ischoolbar.programmer.entity.admin.Publications;


/**
 * ר���̲ĵ�dao
 * @author twl
 *
 */
@Repository
public interface ZPublicationsDao {
	public int add(Publications publications);
	public List<Publications> findAll();
	public Publications queryById(Long id);
}
