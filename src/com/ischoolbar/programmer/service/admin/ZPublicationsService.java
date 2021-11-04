package com.ischoolbar.programmer.service.admin;

import java.util.List;

import org.springframework.stereotype.Service;

import com.ischoolbar.programmer.entity.admin.Publications;


/**
 * ר���̲ĵ�Service
 * @author twl
 *
 */
@Service
public interface ZPublicationsService {
	public int add(Publications publications);
	public List<Publications> findAll();
	public Publications queryById(Long award_id);
}