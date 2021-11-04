package com.ischoolbar.programmer.service.admin.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ischoolbar.programmer.dao.admin.ZAcademicProjectDao;
import com.ischoolbar.programmer.dao.admin.ZCorporateAppliedProjectDao;
import com.ischoolbar.programmer.entity.admin.AcademicProject;
import com.ischoolbar.programmer.entity.admin.CorporateAppliedProject;
import com.ischoolbar.programmer.service.admin.ZProjectService;

@Service
public class ZProjectServiceImpl implements ZProjectService{

	@Autowired
	private ZAcademicProjectDao zAcademicProjectDao;
	@Autowired
	private ZCorporateAppliedProjectDao zCorporateAppliedProjectDao;
	
	
	@Override
	public int addAcademicProject(AcademicProject academicProject) {
		return zAcademicProjectDao.add(academicProject);
	}

	@Override
	public int addAppliedProject(CorporateAppliedProject appliedProject) {
		return zCorporateAppliedProjectDao.add(appliedProject);
	}

	@Override
	public List<AcademicProject> findAllAcademicProjects() {
		return zAcademicProjectDao.findAll();
	}

	@Override
	public List<CorporateAppliedProject> findAllAppliedProjects() {
		return zCorporateAppliedProjectDao.findAll();
	}

	@Override
	public AcademicProject queryAcademicById(long id) {
		return zAcademicProjectDao.queryById(id);
	}

	@Override
	public CorporateAppliedProject queryAppliedById(long id) {
		return zCorporateAppliedProjectDao.queryById(id);
	}

}
