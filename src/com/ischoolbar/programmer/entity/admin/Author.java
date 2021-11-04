package com.ischoolbar.programmer.entity.admin;

import org.springframework.stereotype.Component;

/**
 * 校内外作者
 * @author 13212
 *
 */
@Component
public class Author {
	private Long auid;
	private String aname;
	
	public Long getAuid() {
		return auid;
	}
	public void setAuid(Long auid) {
		this.auid = auid;
	}
	public String getAname() {
		return aname;
	}
	public void setAname(String aname) {
		this.aname = aname;
	}
	
}
