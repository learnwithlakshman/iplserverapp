package com.lwl.iplserverapp.exception;

import lombok.Getter;

@Getter
public class TeamNotFoundException extends Exception {
	
	private static final long serialVersionUID = -1840651988520097302L;
	
	private String message;
	
	public TeamNotFoundException(String message) {
		super();
		this.message = message;
	}
	
	public TeamNotFoundException() {
		super();
	}
	
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("TeamNotFoundException [message=").append(message).append("]");
		return builder.toString();
	}

}

