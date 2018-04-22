package com.baizhiedu.entity;

import java.io.Serializable;
import java.util.Date;

public class User implements Serializable {

	private Integer userId;
	private String userEmail;
	private String userNikcname;
	private String userPassword;
	private Boolean userStatus;
	private Date userRegistertime;
	private String userSalt;
	
	public User() {
		super();
	}

	public User(Integer userId, String userEmail, String userNikcname,
			String userPassword, Boolean userStatus, Date userRegistertime,
			String userSalt) {
		super();
		this.userId = userId;
		this.userEmail = userEmail;
		this.userNikcname = userNikcname;
		this.userPassword = userPassword;
		this.userStatus = userStatus;
		this.userRegistertime = userRegistertime;
		this.userSalt = userSalt;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserNikcname() {
		return userNikcname;
	}

	public void setUserNikcname(String userNikcname) {
		this.userNikcname = userNikcname;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public Boolean getUserStatus() {
		return userStatus;
	}

	public void setUserStatus(Boolean userStatus) {
		this.userStatus = userStatus;
	}

	public Date getUserRegistertime() {
		return userRegistertime;
	}

	public void setUserRegistertime(Date userRegistertime) {
		this.userRegistertime = userRegistertime;
	}

	public String getUserSalt() {
		return userSalt;
	}

	public void setUserSalt(String userSalt) {
		this.userSalt = userSalt;
	}

	@Override
	public String toString() {
		return "User [userId=" + userId + ", userEmail=" + userEmail
				+ ", userNikcname=" + userNikcname + ", userPassword="
				+ userPassword + ", userStatus=" + userStatus
				+ ", userRegistertime=" + userRegistertime + ", userSalt="
				+ userSalt + "]";
	}
	
}
