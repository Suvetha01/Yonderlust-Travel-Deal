package com.kumaran.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.kumaran.beans.Customer;


public interface CustomerDao extends JpaRepository<Customer,Integer>{
	
	//public Customer findBycustomerEmailAndcustomerPassword(String customerEmail, String customerPassword);

	@Query("from Customer where customerEmail=:customerEmail AND customerPassword=:customerPassword")
	public Customer validateCustomer(String customerEmail, String customerPassword);

}
