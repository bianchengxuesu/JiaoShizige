package com.ischoolbar.programmer.entity.admin;

import org.springframework.stereotype.Component;

/**
 * 职务实体类
 * @author yanyan
 *
 */
@Component
public class Position {
	private Long poid;
	private String chineseName;
	private String englishName;
	private int peopleNum;
	public Long getPoid() {
		return poid;
	}
	public void setPoid(Long poid) {
		this.poid = poid;
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
	public int getPeopleNum() {
		return peopleNum;
	}
	public void setPeopleNum(int peopleNum) {
		this.peopleNum = peopleNum;
	}
	
}
