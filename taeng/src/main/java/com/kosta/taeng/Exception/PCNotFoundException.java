package com.kosta.taeng.Exception;

public class PCNotFoundException extends Exception {

	private int failPCNum;

	public PCNotFoundException() {}

	public PCNotFoundException(String message) {
		super(message);
	}
	
	public PCNotFoundException(String message, int failPCNum) {
		super(message);
		this.failPCNum = failPCNum;
	}

	public int getFailPCNum() {
		return failPCNum;
	}
}
