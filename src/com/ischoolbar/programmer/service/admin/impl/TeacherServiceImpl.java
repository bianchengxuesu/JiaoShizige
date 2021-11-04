package com.ischoolbar.programmer.service.admin.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.ischoolbar.programmer.dao.admin.TeacherDao;
import com.ischoolbar.programmer.entity.admin.Teacher;
import com.ischoolbar.programmer.service.admin.TeacherService;
/**
 * 教师service实现类
 * @author Dell
 *
 */
@Service
public class TeacherServiceImpl implements TeacherService {

	@Autowired
	private TeacherDao teacherDao;
	
	public int add(Teacher teacher) {
		return teacherDao.add(teacher);
	}
	
	public int addJobForTeacher(Long teid, String job) {
		return teacherDao.addJobForTeacher(teid, job);
	}
	
	public int addDepartmentForTeacher(Long teid, String department) {
		return teacherDao.addDepartmentForTeacher(teid, department);
	}
	
	public int addSpecialtyForTeacher(Long teid, String specialty) {
		return teacherDao.addSpecialtyForTeacher(teid, specialty);
	}
	
	public int addPositionForTeacher(Long teid, String position) {
		return teacherDao.addPositionForTeacher(teid, position);
	}
	
	public int delete(Long teid) {
		return teacherDao.delete(teid);
	}
	
	public int deleteJobForTeacher(Long teid) {
		return teacherDao.deleteJobForTeacher(teid);
	}
	
	public int deleteDepartmentForTeacher(Long teid) {
		return teacherDao.deleteDepartmentForTeacher(teid);
	}
	
	public int deleteSpecialtyForTeacher(Long teid) {
		return teacherDao.deleteSpecialtyForTeacher(teid);
	}
	
	public int deletePositionForTeacher(Long teid) {
		return teacherDao.deletePositionForTeacher(teid);
	}
	
	public List<Teacher> findAll(){
		return teacherDao.findAll();
	}
	
	public List<Teacher> findAllPage(int page, int size){
		PageHelper.startPage(page, size);
		return teacherDao.findAll();
	}
	
	public List<Teacher> findTeacherByName(String KeyWord){
		return teacherDao.findTeacherByName(KeyWord);
	}
	
	public List<Teacher> findTeacherByJob(String job, int page, int size) {
		PageHelper.startPage(page, size);
		return teacherDao.findTeacherByJob(job);
	}
	
	public List<Teacher> findTeacherByDepartment(String department, int page, int size){
		PageHelper.startPage(page, size);
		return teacherDao.findTeacherByDepartment(department);
	}
	
	public List<Teacher> findTeacherBySpecialty(String specialty, int page, int size){
		PageHelper.startPage(page, size);
		return teacherDao.findTeacherBySpecialty(specialty);
	}
	
	public List<Teacher> findTeacherByPosition(String position, int page, int size){
		PageHelper.startPage(page, size);
		return teacherDao.findTeacherByPosition(position);
	}
	
	public Long findUidById(Long teid) {
		return teacherDao.findUidById(teid);
	}
	
	public String findNameById(Long teid) {
		return teacherDao.findNameById(teid);
	}
	
	public String findJobById(Long teid) {
		return teacherDao.findJobById(teid);
	}
	
	public String findDepartmentById(Long teid) {
		return teacherDao.findDepartmentById(teid);
	}
	
	public String findSpecialtyById(Long teid) {
		return teacherDao.findSpecialtyById(teid);
	}
	
	public String findPositionById(Long teid) {
		return teacherDao.findPositionById(teid);
	}

}
