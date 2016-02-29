package com.bestnest.portal.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/nriServices")
public class NRIServiceController {

	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView nriService() {
		ModelAndView mv = new ModelAndView("nriServices");
		return mv;
	}

	@RequestMapping(value = "/plotManagement")
	public ModelAndView plotManagement() {
		ModelAndView mv = new ModelAndView("plotManagement");
		return mv;
	}

	@RequestMapping(value = "/constructionUpdate")
	public ModelAndView constructionUpdate() {
		ModelAndView mv = new ModelAndView("constructionUpdate");
		return mv;
	}

	@RequestMapping(value = "/tenantManagement")
	public ModelAndView tenantManagement() {
		ModelAndView mv = new ModelAndView("tenantManagement");
		return mv;
	}
	
	@RequestMapping(value = "/buyNRIProduct")
	public ModelAndView buyNRIProduct() {
		ModelAndView mv = new ModelAndView("buyNRIProduct");
		return mv;
	}
	
	@RequestMapping(value = "/nriUserRegistration")
	public ModelAndView nriUserRegistration() {
		ModelAndView mv = new ModelAndView("nriUserRegistration");
		return mv;
	}

}
