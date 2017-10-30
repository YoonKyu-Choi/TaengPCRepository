package com.kosta.taeng.vo;

import java.io.Serializable;

public class Member implements Serializable {

	private String id;
	private String phoneNum;
	private int personNum;
	private String password;
	private String name;
	private int pcTime;
	
	public Member() {}

	public Member(String id, String phoneNum, int personNum, String password, String name, int pcTime) {
		this.id = id;
		this.phoneNum = phoneNum;
		this.personNum = personNum;
		this.password = password;
		this.name = name;
		this.pcTime = pcTime;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPhoneNum() {
		return phoneNum;
	}

	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}

	public int getPersonNum() {
		return personNum;
	}

	public void setPersonNum(int personNum) {
		this.personNum = personNum;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getPcTime() {
		return pcTime;
	}

	public void setPcTime(int pcTime) {
		this.pcTime = pcTime;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		result = prime * result + ((password == null) ? 0 : password.hashCode());
		result = prime * result + pcTime;
		result = prime * result + personNum;
		result = prime * result + ((phoneNum == null) ? 0 : phoneNum.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Member other = (Member) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		if (password == null) {
			if (other.password != null)
				return false;
		} else if (!password.equals(other.password))
			return false;
		if (pcTime != other.pcTime)
			return false;
		if (personNum != other.personNum)
			return false;
		if (phoneNum == null) {
			if (other.phoneNum != null)
				return false;
		} else if (!phoneNum.equals(other.phoneNum))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Member [id=" + id + ", phoneNum=" + phoneNum + ", personNum=" + personNum + ", password=" + password
				+ ", name=" + name + ", pcTime=" + pcTime + "]";
	}
}