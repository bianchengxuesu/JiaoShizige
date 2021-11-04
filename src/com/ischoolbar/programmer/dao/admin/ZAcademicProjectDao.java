package com.ischoolbar.programmer.dao.admin;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.ischoolbar.programmer.entity.admin.AcademicProject;

/**
 * 学术项目的dao
 * @author twl
 *
 */
@Repository
public interface ZAcademicProjectDao {
	public int add(AcademicProject project);
	public List<AcademicProject> findAll();
	public AcademicProject queryById(Long id);
}
