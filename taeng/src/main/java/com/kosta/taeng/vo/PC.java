package com.kosta.taeng.vo;

import java.io.Serializable;

public class PC implements Serializable {
	
	private int pcNum;
	private int pcCost;
	private String id;
	private Member member;
	
	public PC() {}

	public PC(int pcNum, int pcCost, String id) {
		this.pcNum = pcNum;
		this.pcCost = pcCost;
		this.id = id;
	}

	public PC(int pcNum, int pcCost, String id, Member member) {
		this.pcNum = pcNum;
		this.pcCost = pcCost;
		this.id = id;
		this.member = member;
	}

	public int getPcNum() {
		return pcNum;
	}

	public void setPcNum(int pcNum) {
		this.pcNum = pcNum;
	}

	public int getPcCost() {
		return pcCost;
	}

	public void setPcCost(int pcCost) {
		this.pcCost = pcCost;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Member getMember() {
		return member;
	}

	public void setMember(Member member) {
		this.member = member;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		result = prime * result + ((member == null) ? 0 : member.hashCode());
		result = prime * result + pcCost;
		result = prime * result + pcNum;
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
		PC other = (PC) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		if (member == null) {
			if (other.member != null)
				return false;
		} else if (!member.equals(other.member))
			return false;
		if (pcCost != other.pcCost)
			return false;
		if (pcNum != other.pcNum)
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "PC [pcNum=" + pcNum + ", pcCost=" + pcCost + ", id=" + id + ", member=" + member + "]";
	}
}