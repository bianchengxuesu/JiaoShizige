package com.ischoolbar.programmer.entity.admin;

import org.springframework.stereotype.Component;

/**
 * 教师实体类
 * @author yanyan
 *
 */
@Component
public class Teacher{
	private Long teid;
	private Long uid;
	private String salarys;//工号
	private String chinesename;//中文姓名
	private String job;//职称
	private String department;//部门
	private String specialty;//专业
	private String position;//职务
/*	private String englishname;//姓名拼音
	private int sex;//性别
	private int idcard;//身份证号
	private int nationality;//国籍
	private String birthday;//出生日期
	private int tel;//办公电话
	private int mobile;//移动电话
	private String chineseoffice;//办公地址
	private String email;//电子邮箱
	private String workdate;//入职日期
	private int schoolsd1;//人员类型1
	private int rylx;//人员类型2
	private int pylx;//人员类型3
	private String lzdate;//离退时间
	private String employer;//校外人员单位中文
	private String employers;//校外人员单位英文
	private String chinesework;//工作职责*/
	public Long getTeid() {
		return teid;
	}
	public void setTeid(Long teid) {
		this.teid = teid;
	}
	public Long getUid() {
		return uid;
	}
	public void setUid(Long uid) {
		this.uid = uid;
	}
	public String getSalarys() {
		return salarys;
	}
	public void setSalarys(String salarys) {
		this.salarys = salarys;
	}
	public String getChinesename() {
		return chinesename;
	}
	public void setChinesename(String chinesename) {
		this.chinesename = chinesename;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getSpecialty() {
		return specialty;
	}
	public void setSpecialty(String specialty) {
		this.specialty = specialty;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
/*	public String getEnglishname() {
		return englishname;
	}
	public void setEnglishname(String englishname) {
		this.englishname = englishname;
	}
	public int getSex() {
		return sex;
	}
	public void setSex(int sex) {
		this.sex = sex;
	}
	public int getIdcard() {
		return idcard;
	}
	public void setIdcard(int idcard) {
		this.idcard = idcard;
	}
	public int getNationality() {
		return nationality;
	}
	public void setNationality(int nationality) {
		this.nationality = nationality;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public int getTel() {
		return tel;
	}
	public void setTel(int tel) {
		this.tel = tel;
	}
	public int getMobile() {
		return mobile;
	}
	public void setMobile(int mobile) {
		this.mobile = mobile;
	}
	public String getChineseoffice() {
		return chineseoffice;
	}
	public void setChineseoffice(String chineseoffice) {
		this.chineseoffice = chineseoffice;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getWorkdate() {
		return workdate;
	}
	public void setWorkdate(String workdate) {
		this.workdate = workdate;
	}
	public int getSchoolsd1() {
		return schoolsd1;
	}
	public void setSchoolsd1(int schoolsd1) {
		this.schoolsd1 = schoolsd1;
	}
	public int getRylx() {
		return rylx;
	}
	public void setRylx(int rylx) {
		this.rylx = rylx;
	}
	public int getPylx() {
		return pylx;
	}
	public void setPylx(int pylx) {
		this.pylx = pylx;
	}
	public String getLzdate() {
		return lzdate;
	}
	public void setLzdate(String lzdate) {
		this.lzdate = lzdate;
	}
	public String getEmployer() {
		return employer;
	}
	public void setEmployer(String employer) {
		this.employer = employer;
	}
	public String getEmployers() {
		return employers;
	}
	public void setEmployers(String employers) {
		this.employers = employers;
	}
	public String getChinesework() {
		return chinesework;
	}
	public void setChinesework(String chinesework) {
		this.chinesework = chinesework;
	}*/
	
}
