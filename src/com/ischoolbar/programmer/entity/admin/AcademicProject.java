package com.ischoolbar.programmer.entity.admin;

import org.springframework.stereotype.Component;

/**
 * 学术项目实体类
 * @author twl
 *
 */
@Component
public class AcademicProject {
	private Long academic_project_id;
	private String project_cycle;
	private String approve_year;
	private String department;
	private String teacher_name;
	private String project_name;
	private String category;
	private String level;
	private String funding;
	public Long getAcademic_project_id() {
		return academic_project_id;
	}
	public void setAcademic_project_id(Long academic_project_id) {
		this.academic_project_id = academic_project_id;
	}
	public String getProject_cycle() {
		return project_cycle;
	}
	public void setProject_cycle(String project_cycle) {
		this.project_cycle = project_cycle;
	}
	public String getApprove_year() {
		return approve_year;
	}
	public void setApprove_year(String approve_year) {
		this.approve_year = approve_year;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getTeacher_name() {
		return teacher_name;
	}
	public void setTeacher_name(String teacher_name) {
		this.teacher_name = teacher_name;
	}
	public String getProject_name() {
		return project_name;
	}
	public void setProject_name(String project_name) {
		this.project_name = project_name;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}
	public String getFunding() {
		return funding;
	}
	public void setFunding(String funding) {
		this.funding = funding;
	}
	@Override
	public String toString() {
		return "AcademicProject [academic_project_id=" + academic_project_id
				+ ", project_cycle=" + project_cycle + ", approve_year="
				+ approve_year + ", department=" + department
				+ ", teacher_name=" + teacher_name + ", project_name="
				+ project_name + ", category=" + category + ", level=" + level
				+ ", funding=" + funding + "]";
	}
	
}
