package com.kumaran.service;

import java.util.List;
import java.util.Optional;

import com.kumaran.beans.Deal;
import com.kumaran.beans.Merchant;
import com.kumaran.exceptions.MerchantNotFoundException;


public interface AdminService {
	
	public  Merchant registerMerchant(Merchant merchant);
	
	public Merchant viewMerchantById(Integer merchantId)throws MerchantNotFoundException;
	
	public List<Merchant> viewAllMerchant();
	
	public Merchant updateMerchant(Merchant merchant);
	
	public List<Merchant> deleteMerchantById(Integer merchantId)throws MerchantNotFoundException;
	
	public List<Deal> viewAllDeal();


	
}
