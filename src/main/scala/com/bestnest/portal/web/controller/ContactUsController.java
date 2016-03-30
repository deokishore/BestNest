package com.bestnest.portal.web.controller;

import javax.mail.MessagingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.bestnest.portal.web.form.ClientInformationForm;
import com.bestnest.service.ClientInformationService;
import com.bestnest.service.EmailService;

@Controller
public class ContactUsController {

	@Autowired
	ClientInformationService clientInformationService;
	
	@Autowired
	private EmailService emailService;
	

	@RequestMapping(value = "/contactUs", method = RequestMethod.GET)
	public ModelAndView contactUs(@RequestParam(value="source", required=false) String source) {
		ClientInformationForm clientInformationForm = new ClientInformationForm();
		clientInformationForm.setSourceSite(source);
		ModelAndView mv = new ModelAndView("contactUs", "clientInformationForm", clientInformationForm);
		return mv;
	}

	@RequestMapping(value = "/contactUsSave", method = RequestMethod.POST)
	public ModelAndView contactUsSave(
			@ModelAttribute("clientInformationForm") ClientInformationForm clientInformationForm) throws MessagingException {
		
		clientInformationService.saveClientInformation(clientInformationForm);
		this.emailService.sendClientEMail(clientInformationForm);
		
		ModelAndView mv = null;
		
		if(clientInformationForm.getSourceSite().contains("bullandcalisto")) {
			mv = new ModelAndView("bullandcalisto");
		} else if(clientInformationForm.getSourceSite().contains("acecity")) {
			mv = new ModelAndView("acecity");
		} else if(clientInformationForm.getSourceSite().contains("amaatrahomes")) {
			mv = new ModelAndView("amaatrahomes");
		} else if(clientInformationForm.getSourceSite().contains("antrikshgalaxy")) {
			mv = new ModelAndView("antrikshgalaxy");
		} else if(clientInformationForm.getSourceSite().contains("antrikshurbangreek")) {
			mv = new ModelAndView("antrikshurbangreek");
		} else if(clientInformationForm.getSourceSite().contains("damontepic")) {
			mv = new ModelAndView("damontepic");
		} else if(clientInformationForm.getSourceSite().contains("mahagun")) {
			mv = new ModelAndView("mahagunproject");
		} else if(clientInformationForm.getSourceSite().contains("gaur")) {
			mv = new ModelAndView("gaursons");
		} else {
			mv = new ModelAndView("thankYou", "contactUsForm", clientInformationForm);
		}
			
		return mv;
	}
	
	@RequestMapping(value = "/contactUsSaveForSiteVisit", method = RequestMethod.POST)
	public void contactUsSaveForSiteVisit(
			@ModelAttribute("clientInformationForm") ClientInformationForm clientInformationForm) throws MessagingException {
		
		clientInformationService.saveClientInformation(clientInformationForm);
		this.emailService.sendClientEMail(clientInformationForm);
		
		
	}

}
