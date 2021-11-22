package com.kumaran.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kumaran.beans.Admin;
import com.kumaran.beans.Customer;
import com.kumaran.beans.Merchant;
import com.kumaran.repositories.AdminDao;
import com.kumaran.repositories.CustomerDao;
import com.kumaran.repositories.MerchantDao;

@Service
public class LoginServiceImpl implements LoginService{

	@Autowired
	private CustomerDao customerDao;
	
	@Autowired
	private AdminDao adminDao;
	
	@Autowired
	private MerchantDao merchantDao;
	
	@Override
	public Customer authenticateCustomer(String username, String password) {
		
		return customerDao.validateCustomer(username, password);
	}

	@Override
	public Admin authenticateAdmin(String username, String password) {
		
		return adminDao.validateAdmin(username, password);
	}

	@Override
	public Merchant authenticateMerchant(String username, String password) {
		
		return merchantDao.validateMerchant(username, password);
	}

}
