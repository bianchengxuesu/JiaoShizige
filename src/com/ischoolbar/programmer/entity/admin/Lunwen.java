package com.ischoolbar.programmer.entity.admin;

import org.springframework.stereotype.Component;

/**
 * бшнд
 * @author 13212
 *
 */
@Component
public class Lunwen {
	private Long panum;
	private String postdate;
	private String dename;
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
	
	
}
