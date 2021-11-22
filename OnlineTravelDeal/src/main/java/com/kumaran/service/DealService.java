package com.kumaran.service;



import com.kumaran.beans.Deal;
import com.kumaran.exceptions.DealNotFoundException;



public interface DealService {
	
	public Deal viewDealById(Integer dealId)throws DealNotFoundException;
	
	

}
