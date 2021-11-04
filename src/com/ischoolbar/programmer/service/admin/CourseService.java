package com.ischoolbar.programmer.service.admin;

import java.util.List;

import org.springframework.stereotype.Service;

import com.ischoolbar.programmer.entity.admin.Course;

/**
 * �γ̵�Service
 * @author yanyan
 *
 */
@Service
public interface CourseService {
	public List<Course> findCourseByName(String keyWord);
}
