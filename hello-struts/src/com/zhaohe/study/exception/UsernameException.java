package com.zhaohe.study.exception;

public class UsernameException extends Exception {
	private String message;

	public UsernameException(String message) {

		super(message);
		this.message=message;
	}
	@Override
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
}
