package com.kumaran.service;

import java.util.List;

import com.kumaran.beans.Deal;
import com.kumaran.beans.Merchant;
import com.kumaran.exceptions.DealNotFoundException;
import com.kumaran.exceptions.MerchantNotFoundException;
import com.kumaran.repositories.MerchantDao;

public interface MerchantService {
	
	public Deal registerDeal(Deal deal);
	
	public Merchant viewMerchantById(Integer merchantId)throws MerchantNotFoundException;
	
	public Merchant updateMerchant(Merchant merchant);
	
	public List<Deal> getAllDealsByMerchantId(Integer mid);
	
	public Deal viewDealById(Integer dealId)throws DealNotFoundException;
	
	public Deal updateDeal(Deal deal);
	
	public List<Deal> deleteDealById(Integer dealId)throws DealNotFoundException;
	
	
	
	
}
