package com.bestnest.portal.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/delhiLZone")
public class DelhiLZoneController {

	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView delhiLZone() {
		ModelAndView mv = new ModelAndView("delhiLZone");
		return mv;
	}

	@RequestMapping(value = "/ddaNews", method = RequestMethod.GET)
	public ModelAndView ddaNews() {
		ModelAndView mv = new ModelAndView("ddaNews");
		return mv;
	}

	@RequestMapping(value = "/ddaMap", method = RequestMethod.GET)
	public ModelAndView ddaMaps() {
		ModelAndView mv = new ModelAndView("ddaMap");
		return mv;
	}

	@RequestMapping(value = "/ddaBlogs", method = RequestMethod.GET)
	public ModelAndView ddaBlogs() {
		ModelAndView mv = new ModelAndView("ddaBlogs");
		return mv;
	}


}
