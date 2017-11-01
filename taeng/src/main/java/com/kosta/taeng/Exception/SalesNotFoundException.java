package com.kosta.taeng.Exception;

public class SalesNotFoundException extends Exception{
	private String errMsg;
	
	public SalesNotFoundException() {}
	
	public SalesNotFoundException(String errMsg) {
		super(errMsg);
	}
	
	public String getErrMsg() {
		return errMsg;
	}
}
