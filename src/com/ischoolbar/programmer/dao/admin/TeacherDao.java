package com.ischoolbar.programmer.dao.admin;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.ischoolbar.programmer.entity.admin.Teacher;

/**
 * ½ÌÊ¦µÄdao²ã
 * @author Dell
 *
 */
@Repository
public interface TeacherDao {
	public int add(Teacher teacher);
	public int addJobForTeacher(@Param("teid") Long teid, @Param("job") String job);
	public int addDepartmentForTeacher(@Param("teid") Long teid, @Param("department") String department);
	public int addSpecialtyForTeacher(@Param("teid") Long teid, @Param("specialty") String specialty);
	public int addPositionForTeacher(@Param("teid") Long teid, @Param("position") String position);
	public int delete(Long teid);
	public int deleteJobForTeacher(Long teid);
	public int deleteDepartmentForTeacher(Long teid);
	public int deleteSpecialtyForTeacher(Long teid);
	public int deletePositionForTeacher(Long teid);
	public List<Teacher> findAll();
	public List<Teacher> findTeacherByName(String keyWord);
	public List<Teacher> findTeacherByJob(String job);
	public List<Teacher> findTeacherByDepartment(String department);
	public List<Teacher> findTeacherBySpecialty(String specialty);
	public List<Teacher> findTeacherByPosition(String position);
	public Long findUidById(Long teid);
	public String findNameById(Long teid);
	public String findJobById(Long teid);
	public String findDepartmentById(Long teid);
	public String findSpecialtyById(Long teid);
	public String findPositionById(Long teid);
}
