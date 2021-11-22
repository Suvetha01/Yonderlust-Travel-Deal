package com.kumaran.repositories;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;


import com.kumaran.beans.Deal;

public interface DealDao extends JpaRepository<Deal,Integer>{
	
	Optional<Deal> findById(Integer dealId);
	
	

}
