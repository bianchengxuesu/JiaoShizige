package com.ischoolbar.programmer.enums;

/**
 * ͨ��״̬��enum
 * @author zhonglinsen
 *
 */
public enum StatusCode {

	Success(0,"�ɹ�"),
	Fail(-1,"ʧ��"),
	Invalid_Param(1001,"��Ч�Ĳ���"),
	System_Error(1002,"ϵͳ����"),
	Entity_Not_Exist(1003,"����ʵ�岻����"),
	
	WorkBook_Version_Invalid(1003,"excel�汾�Ų��Ϸ�!");
	
	private Integer code;
	private String msg;
	
	private StatusCode(Integer code, String msg) {
		this.code = code;
		this.msg = msg;
	}
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	
	
	
}
