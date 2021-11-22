package com.kumaran.service;

import com.kumaran.beans.Admin;
import com.kumaran.beans.Customer;
import com.kumaran.beans.Merchant;

public interface LoginService {

	public Customer authenticateCustomer(String username,String password);
	
	public Admin authenticateAdmin(String username,String password);
	
	public Merchant authenticateMerchant(String username,String password);
	
}
