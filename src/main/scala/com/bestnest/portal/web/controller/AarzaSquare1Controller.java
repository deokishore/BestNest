package com.bestnest.portal.web.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/aarzasquare1")
public class AarzaSquare1Controller {
	
	private static final Logger logger = LoggerFactory.getLogger(AarzaSquare1Controller.class);
	
	/**
	 */
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView mahagunProject(HttpServletRequest request) {
		logger.info("  Mahagun Project Microsite Called : ");
		return new ModelAndView("aarzasquare1");
 	}
	
	@RequestMapping(value="/priceList", method = RequestMethod.GET)
	public ModelAndView priceList() {
		ModelAndView mv = new ModelAndView("aarzasquare1.priceList");
		return mv;
 	}
	
	@RequestMapping(value="/specification", method = RequestMethod.GET)
	public ModelAndView specification() {
		ModelAndView mv = new ModelAndView("aarzasquare1.specification");
		return mv;
 	}
	
	@RequestMapping(value="/floorPlan", method = RequestMethod.GET)
	public ModelAndView floorPlan() {
		ModelAndView mv = new ModelAndView("aarzasquare1.floorPlan");
		return mv;
 	}
	
	@RequestMapping(value="/sitePlan", method = RequestMethod.GET)
	public ModelAndView sitePlan() {
		ModelAndView mv = new ModelAndView("aarzasquare1.sitePlan");
		return mv;
 	}
	
	@RequestMapping(value="/paymentPlan", method = RequestMethod.GET)
	public ModelAndView paymentPlan() {
		ModelAndView mv = new ModelAndView("aarzasquare1.paymentPlan");
		return mv;
 	}
	
	@RequestMapping(value="/locationMap", method = RequestMethod.GET)
	public ModelAndView locationMap() {
		ModelAndView mv = new ModelAndView("aarzasquare1.locationMap");
		return mv;
 	}
	
	
	@RequestMapping(value="/about", method = RequestMethod.GET)
	public ModelAndView about() {
		ModelAndView mv = new ModelAndView("aarzasquare1.about");
		return mv;
 	}
	
	@RequestMapping(value="/contact", method = RequestMethod.GET)
	public ModelAndView contact() {
		ModelAndView mv = new ModelAndView("aarzasquare1.contact");
		return mv;
 	}
	
	@RequestMapping(value="/siteVisit", method = RequestMethod.GET)
	public ModelAndView siteVisit() {
		ModelAndView mv = new ModelAndView("aarzasquare1.siteVisit");
		return mv;
 	}
	
	
}
