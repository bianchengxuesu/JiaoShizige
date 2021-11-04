package com.ischoolbar.programmer.entity.admin;

import org.springframework.stereotype.Component;

/**
 * 部门实体类
 * @author yanyan
 *
 */
@Component
public class Department {
	private Long deid;
	private String chineseName;
	private String englishName;
/*	private int chineseShow;
	private int englishShow;
	private int attribute;*/
	private int peopleNum;
	private String major;
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public Long getDeid() {
		return deid;
	}
	public void setDeid(Long deid) {
		this.deid = deid;
	}
	public String getChineseName() {
		return chineseName;
	}
	public void setChineseName(String chineseName) {
		this.chineseName = chineseName;
	}
	public String getEnglishName() {
		return englishName;
	}
	public void setEnglishName(String englishName) {
		this.englishName = englishName;
	}
/*	public int getChineseShow() {
		return chineseShow;
	}
	public void setChineseShow(int chineseShow) {
		this.chineseShow = chineseShow;
	}
	public int getEnglishShow() {
		return englishShow;
	}
	public void setEnglishShow(int englishShow) {
		this.englishShow = englishShow;
	}
	public int getAttribute() {
		return attribute;
	}
	public void setAttribute(int attribute) {
		this.attribute = attribute;
	}*/
	public int getPeopleNum() {
		return peopleNum;
	}
	public void setPeopleNum(int peopleNum) {
		this.peopleNum = peopleNum;
	}
	
}
