package com.kumaran.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.kumaran.beans.Admin;

public interface AdminDao extends JpaRepository<Admin,Integer>{

	//public Customer findBycustomerEmailAndcustomerPassword(String customerEmail, String customerPassword);

		@Query("from Admin where adminEmail=:adminEmail AND adminPassword=:adminPassword")
		public Admin validateAdmin(String adminEmail, String adminPassword);
}
