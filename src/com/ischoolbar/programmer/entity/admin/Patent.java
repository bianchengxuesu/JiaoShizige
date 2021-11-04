package com.ischoolbar.programmer.entity.admin;

import org.springframework.stereotype.Component;

/**
 * 专利实体类
 * @author twl
 *
 */
@Component
public class Patent {
	private Long patent_id;
	private String patent_name;
	private String holder;
	private String apply_number;
	private String data;
	private String comment;
	public Long getPatent_id() {
		return patent_id;
	}
	public void setPatent_id(Long patent_id) {
		this.patent_id = patent_id;
	}
	public String getPatent_name() {
		return patent_name;
	}
	public void setPatent_name(String patent_name) {
		this.patent_name = patent_name;
	}
	public String getHolder() {
		return holder;
	}
	public void setHolder(String holder) {
		this.holder = holder;
	}
	public String getApply_number() {
		return apply_number;
	}
	public void setApply_number(String apply_number) {
		this.apply_number = apply_number;
	}
	public String getData() {
		return data;
	}
	public void setData(String data) {
		this.data = data;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	
}
