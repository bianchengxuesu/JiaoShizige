package com.ischoolbar.programmer.dao.admin;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.ischoolbar.programmer.entity.admin.Qikanwenzhang;

/**
 * ÆÚ¿¯ÎÄÕÂµÄdao²ã
 * @author 13212
 *
 */
@Repository
public interface ZQiKanDao {
	public int add(Qikanwenzhang qikanwenzhang);
	public List<Qikanwenzhang> findAll();
	public Qikanwenzhang queryById(Long pername);
}
