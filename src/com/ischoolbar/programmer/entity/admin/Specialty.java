package com.ischoolbar.programmer.entity.admin;

import org.springframework.stereotype.Component;

/**
 * 专业实体类
 * @author yanyan
 *
 */
@Component
public class Specialty {
	private Long spid;
	private String chineseName;
	private String englishName;
	private String englishNames;
	private int peopleNum;
	public Long getSpid() {
		return spid;
	}
	public void setSpid(Long spid) {
		this.spid = spid;
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
	public String getEnglishNames() {
		return englishNames;
	}
	public void setEnglishNames(String englishNames) {
		this.englishNames = englishNames;
	}
	public int getPeopleNum() {
		return peopleNum;
	}
	public void setPeopleNum(int peopleNum) {
		this.peopleNum = peopleNum;
	}
	
}
