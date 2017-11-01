package com.kosta.taeng.Exception;

public class ItemNotFoundException extends Exception {
private static final long serialVersionUID = 1L;
	
	private String failName; //찾지 못한 회원 ID
	public ItemNotFoundException(){}
	public ItemNotFoundException(String message){
		super(message);
	}
	public ItemNotFoundException(String message, String failName) {
		super(message);
		this.failName = failName;
	}
	public String getFailId() {
		return failName;
	}
}
