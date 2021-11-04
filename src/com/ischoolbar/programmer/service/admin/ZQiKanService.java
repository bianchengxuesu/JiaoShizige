package com.ischoolbar.programmer.service.admin;

import java.util.List;

import org.springframework.stereotype.Service;

import com.ischoolbar.programmer.entity.admin.Qikanwenzhang;



/**
 * 期刊管理的添加操作
 * @author 13212
 *
 */
@Service
public interface ZQiKanService {
	public int add(Qikanwenzhang qikanwenzhang);
	public List<Qikanwenzhang> findAll();
	public Qikanwenzhang queryById(Long pername);
}

