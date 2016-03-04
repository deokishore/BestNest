package com.bestnest.portal.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/")
public class SeoController {

	@RequestMapping(value = "/BingSiteAuth", method = RequestMethod.GET)
	public ModelAndView BingSiteAuth() {
		ModelAndView mv = new ModelAndView("BingSiteAuth");
		return mv;
	}

	@RequestMapping(value = "/Google", method = RequestMethod.GET)
	public ModelAndView Google() {
		ModelAndView mv = new ModelAndView("Google");
		return mv;
	}

	@RequestMapping(value = "/robots", method = RequestMethod.GET)
	public ModelAndView Robots() {
		ModelAndView mv = new ModelAndView("Robots");
		return mv;
	}

	@RequestMapping(value = "/siteMap", method = RequestMethod.GET)
	public ModelAndView siteMap() {
		ModelAndView mv = new ModelAndView("siteMap");
		return mv;
	}

}
