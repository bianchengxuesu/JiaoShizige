package com.ischoolbar.programmer.entity.admin;

import org.springframework.stereotype.Component;

/**
 * 总体实体类
 * @author 13212
 *
 */
@Component
public class Total {
	private Long panum;
	private String postdate;
	private String dename;
	private String denames;
	private String teid;
	private String name;
	private String depid;
	private String major;
	private String dename1;
	private String denames1;
	private String dechar;
	private String languages;
	private String issn;
	private String auid;
	private String aname;
	public Long getPanum() {
		return panum;
	}
	public void setPanum(Long panum) {
		this.panum = panum;
	}
	public String getPostdate() {
		return postdate;
	}
	public void setPostdate(String postdate) {
		this.postdate = postdate;
	}
	public String getDename() {
		return dename;
	}
	public void setDename(String dename) {
		this.dename = dename;
	}
	public String getDenames() {
		return denames;
	}
	public void setDenames(String denames) {
		this.denames = denames;
	}
	public String getTeid() {
		return teid;
	}
	public void setTeid(String teid) {
		this.teid = teid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDepid() {
		return depid;
	}
	public void setDepid(String depid) {
		this.depid = depid;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public String getDename1() {
		return dename1;
	}
	public void setDename1(String dename1) {
		this.dename1 = dename1;
	}
	public String getDenames1() {
		return denames1;
	}
	public void setDenames1(String denames1) {
		this.denames1 = denames1;
	}
	public String getDechar() {
		return dechar;
	}
	public void setDechar(String dechar) {
		this.dechar = dechar;
	}
	public String getLanguages() {
		return languages;
	}
	public void setLanguages(String languages) {
		this.languages = languages;
	}
	public String getIssn() {
		return issn;
	}
	public void setIssn(String issn) {
		this.issn = issn;
	}
	public String getAuid() {
		return auid;
	}
	public void setAuid(String auid) {
		this.auid = auid;
	}
	public String getAname() {
		return aname;
	}
	public void setAname(String aname) {
		this.aname = aname;
	}
}
