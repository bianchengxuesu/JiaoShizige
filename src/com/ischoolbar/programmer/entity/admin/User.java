package com.ischoolbar.programmer.entity.admin;

import org.springframework.stereotype.Component;

/**
 * 用户实体类
 * @author 13212
 *
 */
@Component
public class User {
	private Long id;//用户id，设置自增
	private String username;//用户名，登录名
	private String password;//登陆密码
	private Long userrole;
	public Long getUserrole() {
		return userrole;
	}
	public void setUserrole(Long userrole) {
		this.userrole = userrole;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

}
