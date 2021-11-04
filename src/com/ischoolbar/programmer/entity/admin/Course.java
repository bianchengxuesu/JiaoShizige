package com.ischoolbar.programmer.entity.admin;

import org.springframework.stereotype.Component;

/**
 * 课程实体类
 * @author yanyan
 *
 */
@Component
public class Course {
	private Long coid;
	private String conums;//课程号
	private String course;//课程名
	private String cochs;//学时
	private String cocredits;//学分
	public Long getCoid() {
		return coid;
	}
	public void setCoid(Long coid) {
		this.coid = coid;
	}
	public String getConums() {
		return conums;
	}
	public void setConums(String conums) {
		this.conums = conums;
	}
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	public String getCochs() {
		return cochs;
	}
	public void setCochs(String cochs) {
		this.cochs = cochs;
	}
	public String getCocredits() {
		return cocredits;
	}
	public void setCocredits(String cocredits) {
		this.cocredits = cocredits;
	}
	
	
	
}
