package com.ischoolbar.programmer.entity.admin;

import org.springframework.stereotype.Component;

/**
 * ÆÚ¿¯ÎÄÕÂ¹±Ï×
 * @author 13212
 *
 */
@Component
public class Qikanwenzhang {
	private Long pername;
	private String dename;
	private String denames;
	private String description;
	private String path;
	private String dechar;
	private String languages;
	private String issn;
	
	
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
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public Long getPername() {
		return pername;
	}
	public void setPername(Long pername) {
		this.pername = pername;
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
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	
}
