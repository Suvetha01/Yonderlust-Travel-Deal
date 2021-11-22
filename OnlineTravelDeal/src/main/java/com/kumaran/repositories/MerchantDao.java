package com.kumaran.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.kumaran.beans.Merchant;

public interface MerchantDao extends JpaRepository<Merchant,Integer>{
	
	@Query("from Merchant where merchantEmail=:merchantEmail AND merchantPassword=:merchantPassword")
	public Merchant validateMerchant(String merchantEmail, String merchantPassword);

}
