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
import com.kumaran.exceptions.DealNotFoundException;
import com.kumaran.exceptions.MerchantNotFoundException;
import com.kumaran.service.MerchantService;

@Controller
public class MerchantController {
	
	@Autowired
	private MerchantService merchantService;
	
	
	@GetMapping("/adddeal/{mid}")
	public String registerDealLauncher(@PathVariable("mid") Integer mid, Model model) throws MerchantNotFoundException, DealNotFoundException {
		
		Merchant mer = merchantService.viewMerchantById(mid);
		
		
		
		
		Deal deal = new Deal();
		
		deal.setMerchant(mer);
		
	
		
		model.addAttribute("dealData", deal);
		
		return "dealregistrationform";
		
	}
	
	@PostMapping("/registerdeal")
	public ModelAndView doRegisterDeal(@Valid @ModelAttribute("dealData") Deal deal , BindingResult br) throws MerchantNotFoundException {
	
		
		if(br.hasErrors()) {
			
			return new ModelAndView("merchanthome");
		}
		
		System.out.println(deal + "###################");
		
		Deal addedDeal = merchantService.registerDeal(deal);
		
		ModelAndView mv=new ModelAndView("dealregistrationsuccess","deal",addedDeal);
		
		return mv;
		
	}
	
	@GetMapping("/updatemerchants/{merchantId}")
	public String updateMerchantFormLauncher(@PathVariable Integer merchantId, Model model) throws MerchantNotFoundException  {
		
		Merchant merchant= merchantService.viewMerchantById(merchantId);
		
		model.addAttribute("merchantData", merchant);
		
		
		return "updatemerchant";
	}
	
	@PostMapping("/updatemerchantdone")
	public ModelAndView doUpdateMerchant(@Valid @ModelAttribute("merchantData")Merchant merchant,BindingResult br) {
		
		if(br.hasErrors()) {
			
			return new ModelAndView("updatemerchant");
		}
		
			merchantService.updateMerchant(merchant);
			
			return new ModelAndView("merchanthome");
	}

	@GetMapping("/viewdeal/{mid}")
	public String viewDealHandler(@PathVariable("mid") Integer mid, Model model) {
		
		List<Deal> deals = merchantService.getAllDealsByMerchantId(mid);
		
		model.addAttribute("dealData", deals);
		
		return "dealsbymerchant";
		
		
	}
	
	
	
	
	
	
	
	
	
	@GetMapping("/updatedeal/{dealId}")
	public String updateDealFormLauncher(@PathVariable Integer dealId,Model model) throws DealNotFoundException {
		
		Deal deal= merchantService.viewDealById(dealId);
		
		model.addAttribute("dealData", deal);
		
		
		return "updatedealdetails";
	}
	
	@PostMapping("/updatedealsuccess")
	public ModelAndView doUpdateDeal(@Valid @ModelAttribute("dealData")Deal deal,BindingResult br) {
		
		if(br.hasErrors()) {
			
			return new ModelAndView("updatedealdetails");
		}
		
			merchantService.updateDeal(deal);
			
			return new ModelAndView("merchanthome");
	}
	
	@GetMapping("/deletedeal")
	public String doDeleteDeal(@RequestParam("did") Integer dealId,Model model) throws DealNotFoundException {
		
	 	List<Deal> deals= merchantService.deleteDealById(dealId);
		
	 	model.addAttribute("dealList",deals);
		
		return "viewalldeal";
		
	}
	
}
