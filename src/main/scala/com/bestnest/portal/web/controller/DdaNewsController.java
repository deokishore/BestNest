package com.bestnest.portal.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DdaNewsController {

	@RequestMapping(value = "/ddaNews", method = RequestMethod.GET)
	public ModelAndView aboutUs() {
		ModelAndView mv = new ModelAndView("dda-news");
		return mv;
	}

}
