package com.kumaran.beans;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;


public class LoginBean {

	@Email(message = "Please Enter Valid Email")
	private String username;
	
	@NotEmpty(message = "Password is mandatory")
	private String password;
	
	private String role;
	
	public LoginBean() {
		// TODO Auto-generated constructor stub
	}

	public LoginBean(String username, String password, String role) {
		super();
		this.username = username;
		this.password = password;
		this.role = role;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	@Override
	public String toString() {
		return "LoginBean [username=" + username + ", password=" + password + ", role=" + role + "]";
	}

}
