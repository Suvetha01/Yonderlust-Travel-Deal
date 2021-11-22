package com.kumaran.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TravelController {
	
	@GetMapping("/")
	public String homeLauncher() {
		
		return "home";
		
	}
	
	@GetMapping("/contactus")
	public String contactLauncher() {
		
		return "contact";
		
	}
	
	@GetMapping("/aboutus")
	public String aboutLauncher() {
		
		return "about";
		
	}
	
/*	public ModelAndView doFindMerchant(@PathVariable Integer merchantId,Model model) throws MerchantNotFoundException {
	
		 Merchant merchant= adminService.viewMerchantById(merchantId);
		
		model.addAttribute("merchantData", merchant);
		
		
		return new ModelAndView("viewmerchantbyidsuccess");
	
	
	@GetMapping("/findmerchantbyidsuccess")	
	public ModelAndView dofindMerchant(Integer merchantId) {
		Optional<Merchant> opt= adminService.findById(merchantId);
		
		
		if(opt.isPresent()) {
			
			Merchant merchant= opt.get();
			
			ModelAndView mv=new ModelAndView("findMerchantSuccess");
			
			mv.addObject("merchant", merchant);
			
			return mv;
			
		}
		else {
			ModelAndView mv=new ModelAndView("findMerchantfailure");
			return mv;		
		}
		
	} */
	
}
