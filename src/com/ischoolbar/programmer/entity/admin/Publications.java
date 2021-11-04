package com.ischoolbar.programmer.entity.admin;

import org.springframework.stereotype.Component;

/**
 * 专著教材的实体
 * @author twl
 *
 */
@Component
public class Publications {
	private long publications_id; 	//id 非ISBN码
	private String author; 			//作者名
	private String department; 		//作者所属系别
	private String year; 				//出版年份
	private String publications_name; //出版物名称
	private String press; 			//出版社名字
	private String category; 		//出版物类别，用于区分专著和教材
	private String cooperator;		//合作者
	private String note; 			//备注
	private String ISBN; 				//ISBN码

	public long getPublications_id() {
		return publications_id;
	}

	public void setPublications_id(long publications_id) {
		this.publications_id = publications_id;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getPublications_name() {
		return publications_name;
	}

	public void setPublications_name(String publications_name) {
		this.publications_name = publications_name;
	}

	public String getPress() {
		return press;
	}

	public void setPress(String press) {
		this.press = press;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getCooperator() {
		return cooperator;
	}

	public void setCooperator(String cooperator) {
		this.cooperator = cooperator;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	public String getISBN() {
		return ISBN;
	}

	public void setISBN(String iSBN) {
		ISBN = iSBN;
	}

	@Override
	public String toString() {
		return "Publications [publications_id=" + publications_id + ", author="
				+ author + ", department=" + department + ", year=" + year
				+ ", publications_name=" + publications_name + ", press="
				+ press + ", category=" + category + ", cooperator="
				+ cooperator + ", note=" + note + ", ISBN=" + ISBN + "]";
	}
	
}
