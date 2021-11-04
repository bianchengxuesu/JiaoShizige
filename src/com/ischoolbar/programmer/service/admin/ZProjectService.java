package com.ischoolbar.programmer.service.admin;

import java.util.List;

import org.springframework.stereotype.Service;

import com.ischoolbar.programmer.entity.admin.AcademicProject;
import com.ischoolbar.programmer.entity.admin.CorporateAppliedProject;

/**
 * 项目的Service
 * 因为项目包含两种类型，所以对应方法都有两个。
 * @author twl
 *
 */
@Service
public interface ZProjectService {
	/*public int add(Awards award);
	public List<Awards> findAll();
	public Awards queryById(Long award_id);*/
	public int addAcademicProject(AcademicProject academicProject);
	public int addAppliedProject(CorporateAppliedProject appliedProject);
	public List<AcademicProject> findAllAcademicProjects();
	public List<CorporateAppliedProject> findAllAppliedProjects();
	public AcademicProject queryAcademicById(long id);
	public CorporateAppliedProject queryAppliedById(long id);
	
}