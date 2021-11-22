package com.kumaran.service;

import java.util.List;

import com.kumaran.beans.Customer;
import com.kumaran.beans.Deal;
import com.kumaran.exceptions.CustomerNotFoundException;

public interface CustomerService {
	
	public  Customer registerCustomer(Customer customer); 
	
	public List<Deal> viewAllDeal();
	
	public Customer viewCustomerById(Integer customerId)throws CustomerNotFoundException;
	
	public Customer updateCustomer(Customer customer);

}
