package com.ischoolbar.programmer.entity.admin;

import org.springframework.stereotype.Component;

/**
 * 教学贡献实体类
 * @author 13212
 *
 */
@Component
public class Jiaoxuegongxian {
	private Long id;
	private String course;
	private String teacher;
	private String jiaomi;
	private String conums;//课程号
	private String cochs;//学时
	private String cocredits;//学分
	private String coobjects;//授课对象
	private String coobjects2;//旁听对象1
	private String coobjects3;//旁听对象2
	private int coches;//实际课时
	private int ecochs;//实验课时
	private int syear;//开课学年
	private String quarter;//开课季度
	private String city;//上课城市
	private String classid;//班级
	private String beizhu;//备注
	private int checked;//审核标记
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course ==null?null:course.trim();
	}
	public String getTeacher() {
		return teacher;
	}
	public void setTeacher(String teacher) {
		this.teacher = teacher ==null?null:teacher.trim();
	}
	public String getJiaomi() {
		return jiaomi;
	}
	public void setJiaomi(String jiaomi) {
		this.jiaomi = jiaomi ==null?null:jiaomi.trim();
	}
	
	
	public int getCoches() {
		return coches;
	}
	public int getEcochs() {
		return ecochs;
	}
	public int getSyear() {
		return syear;
	}
	public String getConums() {
		return conums;
	}
	public void setConums(String conums) {
		this.conums = conums ==null?null:conums.trim();
	}
	public String getCochs() {
		return cochs;
	}
	public void setCochs(String cochs) {
		this.cochs = cochs ==null?null:cochs.trim();
	}
	public String getCocredits() {
		return cocredits;
	}
	public void setCocredits(String cocredits) {
		this.cocredits = cocredits ==null?null:cocredits.trim();
	}
	public void setCoches(int coches) {
		this.coches = coches;
	}
	public void setEcochs(int ecochs) {
		this.ecochs = ecochs;
	}
	public void setSyear(int syear) {
		this.syear = syear;
	}
	public String getCoobjects() {
		return coobjects;
	}
	public void setCoobjects(String coobjects) {
		this.coobjects = coobjects ==null?null:coobjects.trim();
	}
	public String getCoobjects2() {
		return coobjects2;
	}
	public void setCoobjects2(String coobjects2) {
		this.coobjects2 = coobjects2 ==null?null:coobjects2.trim();
	}
	public String getCoobjects3() {
		return coobjects3;
	}
	public void setCoobjects3(String coobjects3) {
		this.coobjects3 = coobjects3 ==null?null:coobjects3.trim();
	}
	
	public String getQuarter() {
		return quarter;
	}
	public void setQuarter(String quarter) {
		this.quarter = quarter ==null?null:quarter.trim();
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city ==null?null:city.trim();
	}
	public String getClassid() {
		return classid;
	}
	public void setClassid(String classid) {
		this.classid = classid ==null?null:classid.trim();
	}
	public String getBeizhu() {
		return beizhu;
	}
	public void setBeizhu(String beizhu) {
		this.beizhu = beizhu ==null?null:beizhu.trim();
	}
	public int getChecked() {
		return checked;
	}
	public void setChecked(int checked) {
		this.checked = checked;
	}
	
	
	
}
