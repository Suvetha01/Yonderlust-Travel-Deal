package com.kumaran.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kumaran.beans.Deal;
import com.kumaran.beans.Merchant;
import com.kumaran.exceptions.MerchantNotFoundException;
import com.kumaran.service.AdminService;

@Controller
public class AdminController {
	
	
	@Autowired
	private AdminService adminService;
	
	@GetMapping("/signupmerchant")
	public String signupMerchantLauncher(Model model) {
		
		Merchant merchant = new Merchant();
		
		model.addAttribute("merchantData", merchant);
		
		return "merchantregistrationform";
		
	}
	
	@PostMapping("/registermerchant")
	public ModelAndView doRegisterMerchant(@Valid @ModelAttribute("merchantData") Merchant merchant , BindingResult br) {
	
		
		if(br.hasErrors()) {
			
			return new ModelAndView("merchantregistrationform");
		}
		
		Merchant savedMerchant = adminService.registerMerchant(merchant);
		
		ModelAndView mv=new ModelAndView("merchantregistrationsuccess","merchant",savedMerchant);
		
		return mv;
		
	}
	
	@GetMapping("/viewallmerchant")
	public String doGetAllMerchant(Model model) {
	
	 List<Merchant> merchant= adminService.viewAllMerchant();
	 model.addAttribute("merchantList", merchant);
	 return "viewallmerchant";
	 
	}
	
	@GetMapping("/updatemerchant/{merchantId}")
	public String updateMerchantFormLauncher(@PathVariable Integer merchantId,Model model) throws MerchantNotFoundException {
		
		Merchant merchant= adminService.viewMerchantById(merchantId);
		
		model.addAttribute("merchantData", merchant);
		
		
		return "updatemerchantdetails";
	}
	
	@PostMapping("/updatemerchantsuccess")
	public ModelAndView doUpdateMerchant(@Valid @ModelAttribute("merchant")Merchant merchant,BindingResult br) {
		
		if(br.hasErrors()) {
			
			return new ModelAndView("updateMerchantForm");
		}
		
			adminService.updateMerchant(merchant);
			
			return new ModelAndView("adminhome");
	}
	
	@GetMapping("/deletemerchant")
	public String doDeleteMerchant(@RequestParam("mid") Integer merchantId,Model model) throws MerchantNotFoundException {
		
	 	List<Merchant> merchants= adminService.deleteMerchantById(merchantId);
		
	 	model.addAttribute("merchantList",merchants);
		
		return "viewallmerchant";
		
	}
	
	@GetMapping("/viewalldeal")
	public String doGetAllDeal(Model model) {
	
	 List<Deal> deal= adminService.viewAllDeal();
	 model.addAttribute("dealList", deal);
	 return "viewalldeal";
	 
	}
	
	@GetMapping("/viewmerchantbyid")
	public String getMerchantById() {
		
		return "viewmerchantbyid";
		
	}
	
	@GetMapping("/getmerchantbyid")
	public ModelAndView doGetMerchantLauncher(Integer merchantId) {
	
		/*
		
       Merchant merchant= adminService.viewMerchantById(merchantId);
		
		ModelAndView mv=new ModelAndView("viewmerchantbyidsuccess");
			
			mv.addObject("merchant",merchant);
			
			return mv;
			*/
		
		try {
	    	  Merchant merchant= adminService.viewMerchantById(merchantId);
			
			ModelAndView mv=new ModelAndView("viewmerchantbyidsuccess");
				
				mv.addObject("merchant",merchant);
				
				return mv;
	      }	
	      
		 catch(MerchantNotFoundException e){
			 
			 ModelAndView mv=new ModelAndView("viewmerchantbyidfailure");
		     
		     mv.addObject("merchant",merchantId);
				 
		     return mv;
			 
		 }
		
	}
	

}
