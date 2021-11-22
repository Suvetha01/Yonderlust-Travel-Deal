package com.kumaran.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kumaran.beans.Deal;
import com.kumaran.exceptions.DealNotFoundException;
import com.kumaran.exceptions.MerchantNotFoundException;
import com.kumaran.repositories.DealDao;


@Service
public class DealServiceImpl implements DealService{
	
	@Autowired
	private DealDao dealDao;

	@Override
	public Deal viewDealById(Integer dealId) throws DealNotFoundException{
		
		
		return dealDao.findById(dealId).orElseThrow(() ->new DealNotFoundException("deal not found with Id "+ dealId) );
		
	}


	}


