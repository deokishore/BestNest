package com.bestnest.portal.web.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.bestnest.portal.web.form.ProjectDetailsForm;
import com.bestnest.portal.web.form.SalesRegisterForm;
import com.bestnest.service.ProjectDetailsService;

@SessionAttributes({ "salesRegisterForm" })
@Controller
public class SalesRegisterController {
	
	@Autowired
	ProjectDetailsService projectDetailsService;
	
	@ModelAttribute("salesRegisterForm")
	public SalesRegisterForm populateForm() {
		return new SalesRegisterForm(); // populates form for the first time if
										// its null
	}

	@RequestMapping(value = "/getSalesRegister", method = RequestMethod.POST)
	public ModelAndView getSalesRegister(
			@ModelAttribute("salesRegisterForm") SalesRegisterForm salesRegisterForm, ModelMap modelMap) {
		ModelAndView mv = new ModelAndView("Sales_Register_1");
		mv.addObject("salesRegisterForm", salesRegisterForm);
		modelMap.addAttribute("salesRegisterForm", salesRegisterForm);
		return mv;

	}

	@RequestMapping(value = "/saveClientInformation", method = RequestMethod.POST)
	public ModelAndView saveClientInformation(
			@ModelAttribute("salesRegisterForm") SalesRegisterForm salesRegisterForm, HttpSession session,  ModelMap modelMap) {
		SalesRegisterForm salesRegForm = (SalesRegisterForm) session.getAttribute("salesRegisterForm");
		ModelAndView mv = new ModelAndView("Sales_Register_2", "salesRegisterForm", salesRegisterForm);
		return mv;

	}

	@RequestMapping(value = "/saveCompanyQuote", method = RequestMethod.POST)
	public ModelAndView saveCompanyQuote(
			@ModelAttribute("salesRegisterForm") SalesRegisterForm salesRegisterForm, HttpSession session) {
		
		SalesRegisterForm salesRegForm = (SalesRegisterForm) session.getAttribute("salesRegisterForm");
		ProjectDetailsForm projectDetailsForm = projectDetailsService.findByprojectDetailsId(salesRegForm.getProjectDetailsForm().getProjectDetailsId());
		salesRegForm.setProjectDetailsForm(projectDetailsForm);
		
		ModelAndView mv = new ModelAndView("Sales_Register_3",
				"salesRegisterForm", salesRegisterForm);
		return mv;
	}

	@RequestMapping(value = "/saveBestnestQuote", method = RequestMethod.POST)
	public ModelAndView saveBestnestQuote(
			@ModelAttribute("salesRegisterForm") SalesRegisterForm salesRegisterForm) {

		ModelAndView mv = new ModelAndView("Sales_Register_4",
				"salesRegisterForm", salesRegisterForm);
		return mv;

	}

	@RequestMapping(value = "/saveCommission", method = RequestMethod.POST)
	public ModelAndView saveCommission(
			@ModelAttribute("salesRegisterForm") SalesRegisterForm salesRegisterForm) {

		ModelAndView mv = new ModelAndView("Sales_Register_5",
				"salesRegisterForm", salesRegisterForm);
		return mv;
	}

	@RequestMapping(value = "/saveTaxAndTDS", method = RequestMethod.POST)
	public ModelAndView saveTaxAndTDS(
			@ModelAttribute("salesRegisterForm") SalesRegisterForm salesRegisterForm) {
		ModelAndView mv = new ModelAndView("sales-register-summary",
				"salesRegisterForm", salesRegisterForm);
		return mv;
	}
}
