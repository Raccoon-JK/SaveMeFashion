package com.smf.member.model.vo;

import java.sql.Date;

public class Member {
	private String userId;
	private String userName;
	private String userPwd;
	private String phone;
	private Date birth;
	private String agreeEmail;
	private String status;
	private String snsId;
	
	public Member() {
		super();
	}
	public Member(String userId, String userName, String userPwd, String phone, Date birth, String agreeEmail,
			String status, String snsId) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.userPwd = userPwd;
		this.phone = phone;
		this.birth = birth;
		this.agreeEmail = agreeEmail;
		this.status = status;
		this.snsId = snsId;
	}
	public Member(String userId, String userName, String userPwd, String phone, Date birth, String agreeEmail, String snsId) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.userPwd = userPwd;
		this.phone = phone;
		this.birth = birth;
		this.agreeEmail = agreeEmail;
		this.snsId = snsId;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPwd() {
		return userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Date getBirth() {
		return birth;
	}

	public void setBirth(Date birth) {
		this.birth = birth;
	}

	public String getAgreeEmail() {
		return agreeEmail;
	}

	public void setAgreeEmail(String agreeEmail) {
		this.agreeEmail = agreeEmail;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getSnsId() {
		return snsId;
	}

	public void setSnsId(String snsId) {
		this.snsId = snsId;
	}

	@Override
	public String toString() {
		return "Member [userId=" + userId + ", userName=" + userName + ", userPwd=" + userPwd + ", phone=" + phone
				+ ", birth=" + birth + ", agreeEmail=" + agreeEmail + ", status=" + status + ", snsId=" + snsId + "]";
	}

	
	
}