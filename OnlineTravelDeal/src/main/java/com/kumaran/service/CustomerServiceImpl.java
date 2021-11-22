package com.kumaran.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kumaran.beans.Customer;
import com.kumaran.beans.Deal;
import com.kumaran.exceptions.CustomerNotFoundException;
import com.kumaran.repositories.CustomerDao;
import com.kumaran.repositories.DealDao;

@Service
public class CustomerServiceImpl implements CustomerService{

	@Autowired
	private CustomerDao customerDao;
	
	@Autowired
	private DealDao dealDao;
	
	@Override
	public Customer registerCustomer(Customer customer) {
		
    return customerDao.save(customer);
	}

	
	@Override
	public List<Deal> viewAllDeal() {
		
		return dealDao.findAll();
	}
	
	@Override
	public Customer viewCustomerById(Integer customerId) throws CustomerNotFoundException {
		return customerDao.findById(customerId).orElseThrow(() ->new CustomerNotFoundException("Customer not found with Id "+ customerId) );
	}

	@Override
	public Customer updateCustomer(Customer customer) {
		return customerDao.save(customer);
	}
	
}