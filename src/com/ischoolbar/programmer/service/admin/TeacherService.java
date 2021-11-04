package com.ischoolbar.programmer.service.admin;

import java.util.List;

import org.springframework.stereotype.Service;

import com.ischoolbar.programmer.entity.admin.Teacher;

/**
 * ½ÌÊ¦µÄservice
 * @author yanyan
 *
 */
@Service
public interface TeacherService {
	public int add(Teacher teacher);
	public int addJobForTeacher(Long teid, String job);
	public int addDepartmentForTeacher(Long teid, String department);
	public int addSpecialtyForTeacher(Long teid, String specialty);
	public int addPositionForTeacher(Long teid, String position);
	public int delete(Long teid);
	public int deleteJobForTeacher(Long teid);
	public int deleteDepartmentForTeacher(Long teid);
	public int deleteSpecialtyForTeacher(Long teid);
	public int deletePositionForTeacher(Long teid);
	public List<Teacher> findAll();
	public List<Teacher> findAllPage(int page, int size); 
	public List<Teacher> findTeacherByName(String keyWord);
	public List<Teacher> findTeacherByJob(String job, int page, int size);
	public List<Teacher> findTeacherByDepartment(String department, int page, int size);
	public List<Teacher> findTeacherBySpecialty(String specialty, int page, int size);
	public List<Teacher> findTeacherByPosition(String position, int page, int size);
	public Long findUidById(Long teid);
	public String findNameById(Long teid);
	public String findJobById(Long teid);
	public String findDepartmentById(Long teid);
	public String findSpecialtyById(Long teid);
	public String findPositionById(Long teid);
	
}
