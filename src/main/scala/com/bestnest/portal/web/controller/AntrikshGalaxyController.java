package com.bestnest.portal.web.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/antrikshgalaxy")
public class AntrikshGalaxyController {
	
	private static final Logger logger = LoggerFactory.getLogger(AntrikshGalaxyController.class);
	
	/**
	 */
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView mahagunProject(HttpServletRequest request) {
		logger.info("  Mahagun Project Microsite Called : ");
		return new ModelAndView("antrikshgalaxy/antrikshgalaxy");
 	}
	
	@RequestMapping(value="/priceList", method = RequestMethod.GET)
	public ModelAndView priceList() {
		ModelAndView mv = new ModelAndView("antrikshgalaxy/pricelist");
		return mv;
 	}
	
	@RequestMapping(value="/specification", method = RequestMethod.GET)
	public ModelAndView specification() {
		ModelAndView mv = new ModelAndView("antrikshgalaxy/specification");
		return mv;
 	}
	
	@RequestMapping(value="/floorPlan", method = RequestMethod.GET)
	public ModelAndView floorPlan() {
		ModelAndView mv = new ModelAndView("antrikshgalaxy/floorplan");
		return mv;
 	}
	
	@RequestMapping(value="/sitePlan", method = RequestMethod.GET)
	public ModelAndView sitePlan() {
		ModelAndView mv = new ModelAndView("antrikshgalaxy/siteplan");
		return mv;
 	}
	
	@RequestMapping(value="/paymentPlan", method = RequestMethod.GET)
	public ModelAndView paymentPlan() {
		ModelAndView mv = new ModelAndView("antrikshgalaxy/paymentplan");
		return mv;
 	}
	
	@RequestMapping(value="/locationMap", method = RequestMethod.GET)
	public ModelAndView locationMap() {
		ModelAndView mv = new ModelAndView("antrikshgalaxy/locationmap");
		return mv;
 	}
	
	
	@RequestMapping(value="/about", method = RequestMethod.GET)
	public ModelAndView about() {
		ModelAndView mv = new ModelAndView("antrikshgalaxy/about");
		return mv;
 	}
	
	@RequestMapping(value="/contact", method = RequestMethod.GET)
	public ModelAndView contact() {
		ModelAndView mv = new ModelAndView("antrikshgalaxy/contact");
		return mv;
 	}
	
	@RequestMapping(value="/siteVisit", method = RequestMethod.GET)
	public ModelAndView siteVisit() {
		ModelAndView mv = new ModelAndView("antrikshgalaxy/sitevisit");
		return mv;
 	}
	
	
}
