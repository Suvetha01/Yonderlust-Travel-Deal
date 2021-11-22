package com.kumaran.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kumaran.beans.Deal;
import com.kumaran.beans.Merchant;
import com.kumaran.exceptions.MerchantNotFoundException;
import com.kumaran.repositories.DealDao;
import com.kumaran.repositories.MerchantDao;


@Service
public class AdminServiceImpl implements AdminService{

	@Autowired
	private MerchantDao merchantDao;
	
	@Autowired
	private DealDao dealDao;
	

	@Override
	public Merchant registerMerchant(Merchant merchant) {
		
		return merchantDao.save(merchant);
	}


	@Override
	public Merchant viewMerchantById(Integer merchantId)throws MerchantNotFoundException{
		
		return merchantDao.findById(merchantId).orElseThrow(() ->new MerchantNotFoundException("Merchant not found with Id "+ merchantId) );
	}


	@Override
	public List<Merchant> viewAllMerchant() {
		
		return merchantDao.findAll();
	}
	
	@Override
	public Merchant updateMerchant(Merchant merchant) {
		
		return merchantDao.save(merchant);
		
	}


	@Override
	public List<Merchant> deleteMerchantById(Integer merchantId) throws MerchantNotFoundException {
		
		Optional<Merchant> opt= merchantDao.findById(merchantId);
		
		if(!opt.isPresent()) {
			throw new MerchantNotFoundException("Merchant Does not exist with given Id"+merchantId);
		}
		
		
		Merchant merchant= opt.get();
		
		
		merchantDao.delete(merchant);
		
		
		return merchantDao.findAll();
	}
	
	@Override
	public List<Deal> viewAllDeal() {
		
		return dealDao.findAll();
	}



	

	
	
}
