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
import org.springframework.web.servlet.ModelAndView;

import com.kumaran.beans.Customer;
import com.kumaran.beans.Deal;
import com.kumaran.exceptions.CustomerNotFoundException;
import com.kumaran.service.CustomerService;

@Controller
public class CustomerController {
	
	@Autowired
	private CustomerService customerService;
	
	@GetMapping("/signupcustomer")
	public String signupcustomerLauncher(Model model) {
		
		Customer customer = new Customer();
		
		model.addAttribute("customerData", customer);
		
		return "newuserorsignup";
		
	}
	
	@PostMapping("/registerCustomer")
	public ModelAndView doRegisterCustomer(@Valid @ModelAttribute("customerData") Customer customer , BindingResult br) {
	
		System.out.println(customer);
		
		if(br.hasErrors()) {
			
			return new ModelAndView("newuserorsignup");
		}

		
		Customer savedCustomer = customerService.registerCustomer(customer);
		
		ModelAndView mv=new ModelAndView("customerregistrationsuccess","customer",savedCustomer);
		
		return mv;
		
	}
	
	@GetMapping("/viewalldealsbycustomer")
	public String doViewAllDeal(Model model) {
	
	 List<Deal> deal= customerService.viewAllDeal();
	 model.addAttribute("dealList", deal);
	 return "viewalldealbycustomer";
	 
	}
	
	
	@GetMapping("/updatecustomer/{customerId}")
	public String updateCustomerFormLauncher(@PathVariable Integer customerId,Model model) throws CustomerNotFoundException  {
		
		Customer customer= customerService.viewCustomerById(customerId);
		
		model.addAttribute("customerData", customer);
		
		
		return "updatecustomerdetails";
	}
	
	@PostMapping("/updatecustomersuccess")
	public ModelAndView doUpdateCustomer(@Valid @ModelAttribute("customerData")Customer customer,BindingResult br) {
		
		if(br.hasErrors()) {
			
			return new ModelAndView("updatecustomerdetails");
		}
		
			customerService.updateCustomer(customer);
			
			return new ModelAndView("customerhome");
	}

}
