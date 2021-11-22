package com.kumaran.beans;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

@Entity
public class Customer {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer customerId;
	
	@NotEmpty(message = "*Name is mandatory")
	@Size(min=3,message = "Minimum size should be 3 character")
	private String customerName;
	
	@Email(message = "*Enter a valid Email Address")
	private String customerEmail;
	
	@NotEmpty(message = "*Password is mandatory")
	@Size(min=4,message = "Minimum size should be 4 character")
	private String customerPassword;
	
	@NotEmpty(message = "*Contact Number is mandatory")
	@Size(min=10,message = "Enter A Valid 10 Digit Mobile Number")
	private String customerContactNumber;
	
	@NotEmpty(message = "*Address is mandatory")
	private String customerAddress;
	
	private String customerGender;

	public Integer getCustomerId() {
		return customerId;
	}

	public void setCustomerId(Integer customerId) {
		this.customerId = customerId;
	}

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public String getCustomerEmail() {
		return customerEmail;
	}

	public void setCustomerEmail(String customerEmail) {
		this.customerEmail = customerEmail;
	}

	public String getCustomerPassword() {
		return customerPassword;
	}

	public void setCustomerPassword(String customerPassword) {
		this.customerPassword = customerPassword;
	}

	public String getCustomerContactNumber() {
		return customerContactNumber;
	}

	public void setCustomerContactNumber(String customerContactNumber) {
		this.customerContactNumber = customerContactNumber;
	}

	public String getCustomerAddress() {
		return customerAddress;
	}

	public void setCustomerAddress(String customerAddress) {
		this.customerAddress = customerAddress;
	}

	public String getCustomerGender() {
		return customerGender;
	}

	public void setCustomerGender(String customerGender) {
		this.customerGender = customerGender;
	}

	public Customer() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "Customer [customerId=" + customerId + ", customerName=" + customerName + ", customerEmail="
				+ customerEmail + ", customerPassword=" + customerPassword + ", customerContactNumber="
				+ customerContactNumber + ", customerAddress=" + customerAddress + ", customerGender=" + customerGender
				+ "]";
	}

}
