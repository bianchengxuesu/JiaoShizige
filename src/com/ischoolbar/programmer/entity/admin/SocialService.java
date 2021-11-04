package com.ischoolbar.programmer.entity.admin;

import org.springframework.stereotype.Component;

/**
 * 社会兼职实体类
 * @author twl
 *
 */
@Component
public class SocialService {
	private Long social_service_id;
	private String teacher_name;
	private String department;
	private String category;
	private String service_name;
	public String getService_name() {
		return service_name;
	}
	public void setService_name(String service_name) {
		this.service_name = service_name;
	}
	public Long getSocial_service_id() {
		return social_service_id;
	}
	public void setSocial_service_id(Long social_service_id) {
		this.social_service_id = social_service_id;
	}
	public String getTeacher_name() {
		return teacher_name;
	}
	public void setTeacher_name(String teacher_name) {
		this.teacher_name = teacher_name;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	@Override
	public String toString() {
		return "SocialService [social_service_id=" + social_service_id
				+ ", teacher_name=" + teacher_name + ", department="
				+ department + ", category=" + category + "]";
	}
	
}
