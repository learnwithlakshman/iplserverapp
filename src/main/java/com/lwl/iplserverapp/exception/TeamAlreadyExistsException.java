package com.lwl.iplserverapp.exception;

import lombok.Getter;

@Getter
public class TeamAlreadyExistsException extends Exception {
	
	private static final long serialVersionUID = -699448769244115155L;
	private String message;
	
	public TeamAlreadyExistsException() {
		this.message = "Contact already exists with given number";
	}
	
	public TeamAlreadyExistsException(String message) {
		super();
		this.message=message;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("TeamAlreadyExistsException [message=").append(message).append("]");
		return builder.toString();
	}
	
	
}
