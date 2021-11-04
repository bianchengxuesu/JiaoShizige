package com.ischoolbar.programmer.entity.admin;
import org.springframework.stereotype.Component;

/**
 * 应用项目实体类
 * @author twl
 *
 */
@Component
public class CorporateAppliedProject {
	private Long id;
	private String approve_year;
	private String department;
	private String teacher_name;
	private String project_name;
	private String category;
	private String funding;
	private String client;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
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
	public String getFunding() {
		return funding;
	}
	public void setFunding(String funding) {
		this.funding = funding;
	}
	public String getClient() {
		return client;
	}
	public void setClient(String client) {
		this.client = client;
	}
	
}
