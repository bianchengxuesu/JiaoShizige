package com.ischoolbar.programmer.entity.admin;

import org.springframework.stereotype.Component;

/**
 * 教学成果实体
 * @author yanyan
 *
 */
@Component
public class Awards {
	private Long award_id;     //序号
	private String teacher_name; //姓名
	private String department;   //系别
	private String award_name;   //获奖名称
	private String award_level;  //获奖级别
	private String date;         //获奖时间
	public Long getAward_id() {
		return award_id;
	}
	public void setAward_id(Long award_id) {
		this.award_id = award_id;
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
	public String getAward_name() {
		return award_name;
	}
	public void setAward_name(String award_name) {
		this.award_name = award_name;
	}
	public String getAward_level() {
		return award_level;
	}
	public void setAward_level(String award_level) {
		this.award_level = award_level;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	
	
	
}
