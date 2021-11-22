package com.kumaran.service;

import java.util.List;
import java.util.Optional;

import javax.xml.transform.ErrorListener;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kumaran.beans.Deal;
import com.kumaran.beans.Merchant;
import com.kumaran.exceptions.DealNotFoundException;
import com.kumaran.exceptions.MerchantNotFoundException;
import com.kumaran.repositories.DealDao;
import com.kumaran.repositories.MerchantDao;

@Service
public class MerchantServiceImpl implements MerchantService{

	@Autowired
	private DealDao dealDao;
	
	@Autowired
	private MerchantDao merchantDao;
	
	
	@Override
	public Deal registerDeal(Deal deal) {
		
		return dealDao.save(deal);
		
	}
	

	@Override
	public Merchant viewMerchantById(Integer merchantId) throws MerchantNotFoundException {
		return merchantDao.findById(merchantId).orElseThrow(() ->new MerchantNotFoundException("merchant not found with Id "+ merchantId) );
	
	}


	@Override
	public Merchant updateMerchant(Merchant merchant) {
		
		return merchantDao.save(merchant);
	}
	
	@Override
	public List<Deal> getAllDealsByMerchantId(Integer mid){
		
		Merchant merchant = merchantDao.findById(mid).get();
		
		return merchant.getDeals();
	}
	
	@Override
	public Deal updateDeal(Deal deal) {
		
		return dealDao.save(deal);
		
	}


	@Override
	public List<Deal> deleteDealById(Integer dealId) throws DealNotFoundException {
		
		Optional<Deal> opt= dealDao.findById(dealId);
		
		if(!opt.isPresent()) {
			throw new DealNotFoundException("Deal does not exist with given Id"+dealId);
		}
		
		
		Deal deal= opt.get();
		
		
		dealDao.delete(deal);
		
		
		return dealDao.findAll();
	}
	
	

	@Override
	public Deal viewDealById(Integer dealId)throws DealNotFoundException{
		
		return dealDao.findById(dealId).orElseThrow(() ->new DealNotFoundException("Deal not found with Id "+ dealId) );
	}

	
}
