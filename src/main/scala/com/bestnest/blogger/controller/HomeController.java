package com.bestnest.blogger.controller;

import com.bestnest.blogger.util.Constants;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.Locale;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger LOGGER = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = Constants.URI_HOME, method = RequestMethod.GET)
	public String tile(Locale locale, Model model) {
		LOGGER.info("Welcome home! The client locale is {}.", locale);
		return Constants.PAGE_HOME;
	}

	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public String test(Locale locale, Model model) {
		LOGGER.info("Welcome home! The client locale is {}.", locale);
		return "home";
	}

}
