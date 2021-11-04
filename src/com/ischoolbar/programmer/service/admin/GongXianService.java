package com.ischoolbar.programmer.service.admin;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.ischoolbar.programmer.entity.admin.Jiaoxuegongxian;

/**
 * 教学贡献的Service
 * @author 13212
 *
 */
@Service
public interface GongXianService {
	public int add(Jiaoxuegongxian jiaoxuegongxian);
	public int edit(Jiaoxuegongxian jiaoxuegongxian);
	public int delete(Long id);
	public List<Jiaoxuegongxian> findList(Map<String, Object> queryMap);
	public List<Jiaoxuegongxian> findAll();
	public List<Jiaoxuegongxian> findAllByCourseOrTeacher(String KeyWord);
	public Integer getTotal(Map<String, Object> queryMap);
	public Jiaoxuegongxian findById(Long id);
}
