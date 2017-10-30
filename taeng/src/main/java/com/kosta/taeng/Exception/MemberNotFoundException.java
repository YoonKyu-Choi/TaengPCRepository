package com.kosta.taeng.Exception;

public class MemberNotFoundException extends Exception {
	
	private String failId;

	public MemberNotFoundException() {}

	public MemberNotFoundException(String message) {
		super(message);
	}
	
	public MemberNotFoundException(String message, String failId) {
		super(message);
		this.failId = failId;
	}

	public String getFailId() {
		return failId;
	}
}