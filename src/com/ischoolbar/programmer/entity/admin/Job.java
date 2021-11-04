package com.ischoolbar.programmer.entity.admin;

import org.springframework.stereotype.Component;

/**
 * 职称实体类
 * @author yanyan
 *
 */
@Component
public class Job {
	private Long jobid;
	private String chineseName;
	private String englishName;
//	private int fullTimeNum;
//	private int partTimeNum;
	private int peopleNum;
	public Long getJobid() {
		return jobid;
	}
	public void setJobid(Long jobid) {
		this.jobid = jobid;
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
//	public int getFullTimeNum() {
//		return fullTimeNum;
//	}
//	public void setFullTimeNum(int fullTimeNum) {
//		this.fullTimeNum = fullTimeNum;
//	}
//	public int getPartTimeNum() {
//		return partTimeNum;
//	}
//	public void setPartTimeNum(int partTimeNum) {
//		this.partTimeNum = partTimeNum;
//	}
	public int getPeopleNum() {
		return peopleNum;
	}
	public void setPeopleNum(int peopleNum) {
		this.peopleNum = peopleNum;
	}
	
}
