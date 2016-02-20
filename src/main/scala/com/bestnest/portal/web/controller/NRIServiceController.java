package com.bestnest.portal.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class NRIServiceController {

	@RequestMapping(value = "/nriServices")
	public ModelAndView nriService() {
		ModelAndView mv = new ModelAndView("nri-services");
		return mv;
	}

	@RequestMapping(value = "/plotManagement")
	public ModelAndView plotManagement() {
		ModelAndView mv = new ModelAndView("plot-management");
		return mv;
	}

	@RequestMapping(value = "/constructionUpdate")
	public ModelAndView constructionUpdate() {
		ModelAndView mv = new ModelAndView("construction-update");
		return mv;
	}

	@RequestMapping(value = "/tenantManagement")
	public ModelAndView tenantManagement() {
		ModelAndView mv = new ModelAndView("tenant-management");
		return mv;
	}
	
	@RequestMapping(value = "/buyNRIProduct")
	public ModelAndView buyNRIProduct() {
		ModelAndView mv = new ModelAndView("buy-nri-product");
		return mv;
	}
	
	@RequestMapping(value = "/nriUserRegistration")
	public ModelAndView nriUserRegistration() {
		ModelAndView mv = new ModelAndView("nri-user-registration");
		return mv;
	}

}
