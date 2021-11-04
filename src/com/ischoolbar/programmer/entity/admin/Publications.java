package com.ischoolbar.programmer.entity.admin;

import org.springframework.stereotype.Component;

/**
 * ר���̲ĵ�ʵ��
 * @author twl
 *
 */
@Component
public class Publications {
	private long publications_id; 	//id ��ISBN��
	private String author; 			//������
	private String department; 		//��������ϵ��
	private String year; 				//�������
	private String publications_name; //����������
	private String press; 			//����������
	private String category; 		//�����������������ר���ͽ̲�
	private String cooperator;		//������
	private String note; 			//��ע
	private String ISBN; 				//ISBN��

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
