package com.ischoolbar.programmer.dao.admin;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.ischoolbar.programmer.entity.admin.Course;

/**
 * ¿Î³ÌµÄdao²ã
 * @author yanyan
 *
 */
@Repository
public interface CourseDao {
	public List<Course> findCourseByName(String keyWord);
}
