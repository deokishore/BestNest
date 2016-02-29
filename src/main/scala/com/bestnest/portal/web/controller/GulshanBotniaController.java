package com.bestnest.portal.web.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/gulshan-botnia-sector144-noida")
public class GulshanBotniaController {
	
	private static final Logger logger = LoggerFactory.getLogger(GulshanBotniaController.class);
	
	/**
	 */
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView mahagunProject(HttpServletRequest request) {
		logger.info("  Mahagun Project Microsite Called : ");
		return new ModelAndView("gulshan-botnia-sector144-noida");
 	}
	
	@RequestMapping(value="/pricelist", method = RequestMethod.GET)
	public ModelAndView priceList() {
		ModelAndView mv = new ModelAndView("gulshan-botnia-sector144-noida.priceList");
		return mv;
 	}
	
	@RequestMapping(value="/specification", method = RequestMethod.GET)
	public ModelAndView specification() {
		ModelAndView mv = new ModelAndView("gulshan-botnia-sector144-noida.specification");
		return mv;
 	}
	
	@RequestMapping(value="/floorplan", method = RequestMethod.GET)
	public ModelAndView floorPlan() {
		ModelAndView mv = new ModelAndView("gulshan-botnia-sector144-noida.floorPlan");
		return mv;
 	}
	
	@RequestMapping(value="/siteplan", method = RequestMethod.GET)
	public ModelAndView sitePlan() {
		ModelAndView mv = new ModelAndView("gulshan-botnia-sector144-noida.sitePlan");
		return mv;
 	}
	
	@RequestMapping(value="/paymentplan", method = RequestMethod.GET)
	public ModelAndView paymentPlan() {
		ModelAndView mv = new ModelAndView("gulshan-botnia-sector144-noida.paymentPlan");
		return mv;
 	}
	
	@RequestMapping(value="/locationmap", method = RequestMethod.GET)
	public ModelAndView locationMap() {
		ModelAndView mv = new ModelAndView("gulshan-botnia-sector144-noida.locationMap");
		return mv;
 	}
	
	
	@RequestMapping(value="/about", method = RequestMethod.GET)
	public ModelAndView about() {
		ModelAndView mv = new ModelAndView("gulshan-botnia-sector144-noida.about");
		return mv;
 	}
	
	@RequestMapping(value="/contact", method = RequestMethod.GET)
	public ModelAndView contact() {
		ModelAndView mv = new ModelAndView("gulshan-botnia-sector144-noida.contact");
		return mv;
 	}
	
	@RequestMapping(value="/sitevisit", method = RequestMethod.GET)
	public ModelAndView siteVisit() {
		ModelAndView mv = new ModelAndView("gulshan-botnia-sector144-noida.siteVisit");
		return mv;
 	}
	
	
}
