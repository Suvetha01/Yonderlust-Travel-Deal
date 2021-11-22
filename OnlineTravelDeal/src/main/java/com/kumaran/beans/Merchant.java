
package com.kumaran.beans;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;



@Entity
public class Merchant {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer merchantId;
	
	@Email(message = "Enter Valid Email Address")
	private String merchantEmail;
	
	@NotEmpty(message = "password is mandatory")
	@Size(min=4,message = "Minimum size should be 4 character")
	private String merchantPassword;
	
	@NotEmpty(message = "Name is mandatory")
	@Size(min=3,message = "Minimum size should be 3 character")
	private String merchantName;
	
	private String merchantContact;
	
	private String merchantAddress;
	
	
	@OneToMany(cascade=CascadeType.ALL,fetch=FetchType.EAGER, mappedBy = "merchant")
	private List<Deal> deals= new ArrayList<>();


	public Integer getMerchantId() {
		return merchantId;
	}


	public void setMerchantId(Integer merchantId) {
		this.merchantId = merchantId;
	}


	public String getMerchantEmail() {
		return merchantEmail;
	}


	public void setMerchantEmail(String merchantEmail) {
		this.merchantEmail = merchantEmail;
	}


	public String getMerchantPassword() {
		return merchantPassword;
	}


	public void setMerchantPassword(String merchantPassword) {
		this.merchantPassword = merchantPassword;
	}


	public String getMerchantName() {
		return merchantName;
	}


	public void setMerchantName(String merchantName) {
		this.merchantName = merchantName;
	}


	public String getMerchantContact() {
		return merchantContact;
	}


	public void setMerchantContact(String merchantContact) {
		this.merchantContact = merchantContact;
	}


	public String getMerchantAddress() {
		return merchantAddress;
	}


	public void setMerchantAddress(String merchantAddress) {
		this.merchantAddress = merchantAddress;
	}


	public List<Deal> getDeals() {
		return deals;
	}


	public void setDeals(List<Deal> deals) {
		this.deals = deals;
	}



	public Merchant(Integer merchantId, @Email(message = "Enter Valid Email Address") String merchantEmail,
			@NotEmpty(message = "password is mandatory") @Size(min = 4, message = "Minimum size should be 4 charecter") String merchantPassword,
			@NotEmpty(message = "Name is mandatory") @Size(min = 3, message = "Minimum size should be 3 charecter") String merchantName,
			String merchantContact, String merchantAddress, List<Deal> deals) {
		super();
		this.merchantId = merchantId;
		this.merchantEmail = merchantEmail;
		this.merchantPassword = merchantPassword;
		this.merchantName = merchantName;
		this.merchantContact = merchantContact;
		this.merchantAddress = merchantAddress;
		this.deals = deals;
	}


	public Merchant() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	
	
	

}
