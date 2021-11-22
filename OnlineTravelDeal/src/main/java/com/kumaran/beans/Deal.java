package com.kumaran.beans;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

@Entity
public class Deal {

	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer dealId;
	
	@NotEmpty(message = "Deal Name is mandatory")
	private String dealName;
	
	@NotEmpty(message = "Deal description is mandatory")
	@Size(min=10,message = "Minimum size should be 10 character")
	private String dealDescription;
	
	
	private Double dealPrice;


	private Integer numberOfDeals;
	
	@ManyToOne(cascade=CascadeType.ALL,fetch=FetchType.EAGER)
	private Merchant merchant;

	public Integer getDealId() {
		return dealId;
	}

	public void setDealId(Integer dealId) {
		this.dealId = dealId;
	}

	public String getDealName() {
		return dealName;
	}

	public void setDealName(String dealName) {
		this.dealName = dealName;
	}

	public String getDealDescription() {
		return dealDescription;
	}

	public void setDealDescription(String dealDescription) {
		this.dealDescription = dealDescription;
	}

	public Double getDealPrice() {
		return dealPrice;
	}

	public void setDealPrice(Double dealPrice) {
		this.dealPrice = dealPrice;
	}

	public Integer getNumberOfDeals() {
		return numberOfDeals;
	}

	public void setNumberOfDeals(Integer numberOfDeals) {
		this.numberOfDeals = numberOfDeals;
	}

	public Merchant getMerchant() {
		return merchant;
	}

	public void setMerchant(Merchant merchant) {
		this.merchant = merchant;
	}

	@Override
	public String toString() {
		return "Deal [dealId=" + dealId + ", dealName=" + dealName + ", dealDescription=" + dealDescription
				+ ", dealPrice=" + dealPrice + ", numberOfDeals=" + numberOfDeals + ", merchant=" + merchant + "]";
	}

	public Deal() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Deal(Integer dealId, @NotEmpty(message = "Deal Name is mandatory") String dealName,
			@NotEmpty(message = "Deal description is mandatory") @Size(min = 10, message = "Minimum size should be 10 character") String dealDescription,
			@NotEmpty(message = "Deal price is mandatory") Double dealPrice,
			@NotEmpty(message = "Number of deals is mandatory") Integer numberOfDeals, Merchant merchant) {
		super();
		this.dealId = dealId;
		this.dealName = dealName;
		this.dealDescription = dealDescription;
		this.dealPrice = dealPrice;
		this.numberOfDeals = numberOfDeals;
		this.merchant = merchant;
	}

	
	
}
