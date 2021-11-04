package com.ischoolbar.programmer.dao.admin;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.ischoolbar.programmer.entity.admin.AcademicProject;
import com.ischoolbar.programmer.entity.admin.CorporateAppliedProject;


/**
 * 应用项目的dao
 * @author twl
 *
 */
@Repository
public interface ZCorporateAppliedProjectDao {
	public int add(CorporateAppliedProject project);
	public List<CorporateAppliedProject> findAll();
	public CorporateAppliedProject queryById(Long id);
}
