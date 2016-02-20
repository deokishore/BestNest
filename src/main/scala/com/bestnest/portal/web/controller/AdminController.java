package com.bestnest.portal.web.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminController {
	
	@RequestMapping(value = "/admin", method = RequestMethod.POST)
	public ModelAndView getSalesRegister(HttpSession session) {
		session.setAttribute("login", "");
		ModelAndView mv = new ModelAndView("login");
		return mv;
	}

}
