package com.kumaran.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kumaran.beans.Admin;
import com.kumaran.beans.Customer;
import com.kumaran.beans.LoginBean;
import com.kumaran.beans.Merchant;
import com.kumaran.service.LoginService;

@Controller
public class LoginController {
	
	@Autowired
	private LoginService loginService;

	@GetMapping("/loggingIn")
	public String launchLoginFormPage(Model model) {
		
	LoginBean loginBean=new LoginBean();
	
	model.addAttribute("loginData", loginBean);
		
		return "signinorlogin";
	}
	

	@PostMapping("/login")
	public ModelAndView doLogin(@Valid @ModelAttribute("loginData") LoginBean loginBean,BindingResult br) {
		
		if(br.hasErrors()) {
			return new ModelAndView("signinorlogin");
		}
		
		if(loginBean.getRole().equals("Customer")) {
			
		 	Customer customer= loginService.authenticateCustomer(loginBean.getUsername(), loginBean.getPassword());
		 	
		 	if(customer != null)
		 		return new ModelAndView("customerhome","customerData",customer);
		 	
		}
		
		else if(loginBean.getRole().equals("Admin")) {
			
			Admin admin = loginService.authenticateAdmin(loginBean.getUsername(), loginBean.getPassword());
			
			if(admin != null)
		 		return new ModelAndView("adminhome","adminData",admin);
		}
		
		else if(loginBean.getRole().equals("Merchant")) {
			
			Merchant merchant =loginService.authenticateMerchant(loginBean.getUsername(), loginBean.getPassword());
			
			if(merchant != null)
		 		return new ModelAndView("merchanthome","merchantData",merchant);
			
		}
		
		
		return new ModelAndView("signinorlogin","flag","Invalid Username or password!!..");
		
		
	}
	
	@GetMapping("/logout")
	public String doLogout(HttpSession session,Model model) {
		
		session.invalidate();
		
		LoginBean loginBean =new LoginBean();
		
		model.addAttribute("loginData",loginBean);
		
		return "home";
		
	}
	
}
