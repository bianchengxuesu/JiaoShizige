package com.ischoolbar.programmer.service.admin;

import java.util.List;

import org.springframework.stereotype.Service;

import com.ischoolbar.programmer.entity.admin.Course;

/**
 * ¿Î³ÌµÄService
 * @author yanyan
 *
 */
@Service
public interface CourseService {
	public List<Course> findCourseByName(String keyWord);
}
