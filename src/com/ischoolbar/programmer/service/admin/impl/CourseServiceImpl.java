package com.ischoolbar.programmer.service.admin.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ischoolbar.programmer.dao.admin.CourseDao;
import com.ischoolbar.programmer.entity.admin.Course;
import com.ischoolbar.programmer.service.admin.CourseService;

/**
 * 课程的service实现类
 * @author yanyan
 *
 */
@Service
public class CourseServiceImpl implements CourseService {

	@Autowired
	private CourseDao courseDao;
	
	public List<Course> findCourseByName(String KeyWord){
		return courseDao.findCourseByName(KeyWord);
	}

}
