package com.ischoolbar.programmer.dao.admin;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.ischoolbar.programmer.entity.admin.Author;
import com.ischoolbar.programmer.entity.admin.Department;
import com.ischoolbar.programmer.entity.admin.Jiaoxuegongxian;
import com.ischoolbar.programmer.entity.admin.Lunwen;
import com.ischoolbar.programmer.entity.admin.Qikanwenzhang;
import com.ischoolbar.programmer.entity.admin.Teacher;


/**
 * ����dao
 * @author 13212
 *
 */
@Repository
public interface GongXianDao {
	public int add(Jiaoxuegongxian jiaoxuegongxian);
	public int edit(Jiaoxuegongxian jiaoxuegongxian);
	public int delete(Long id);
	public List<Jiaoxuegongxian> findList(Map<String, Object> queryMap);
	public List<Jiaoxuegongxian> findAll();
	public List<Jiaoxuegongxian> findAllByCourseOrTeacher(String KeyWord);
	public Integer getTotal(Map<String, Object> queryMap);
	public Jiaoxuegongxian findById(Long id);
	
	
	/*int insertSelective(Teacher record);*/
	int insertSelective(Teacher record);
	int insertAuthor(Author record);
	int insertDepartment(Department record);
	int insertQikanwenzhang(Qikanwenzhang record);
	int insertLunwen(Lunwen record);
	

	
}
