package com.ischoolbar.programmer.service.admin;

import java.util.List;

import com.ischoolbar.programmer.entity.admin.SocialService;

/**
 * ����ְ��Service
 * @author twl
 *
 */
public interface ZSocialService {
	public int add(SocialService socialService);
	public List<SocialService> findAll();
	public SocialService queryById(Long id);
}