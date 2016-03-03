package com.bestnest.portal.web.controller;

import java.util.List;
import java.util.Set;
import java.util.TreeSet;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.bestnest.portal.web.form.CityForm;
import com.bestnest.portal.web.form.CompanyForm;
import com.bestnest.portal.web.form.ProjectDetailsForm;
import com.bestnest.portal.web.form.ProjectForm;
import com.bestnest.portal.web.form.ProjectSearchForm;
import com.bestnest.service.ProjectSearchService;
import com.bestnest.util.Constant;
import com.bestnest.util.ProjectDetailsFormComparator;

@Controller
@RequestMapping(value="/gaurproject")
public class GaurSonsController {
	
	private static final String GAURSONS_INDIA_LIMITED = "Gaursons India Limited";

	private static final Logger logger = LoggerFactory.getLogger(GaurSonsController.class);
	
	@Autowired
	ProjectSearchService projectSearchService;
	
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView gaurProject(HttpServletRequest request) {
		logger.info("  Gaur Sons Microsite Called : ");
		
		ProjectSearchForm projectSearchForm = new ProjectSearchForm();
		CompanyForm companyForm = new CompanyForm();
		companyForm.setCompanyName(GAURSONS_INDIA_LIMITED);
		CityForm cityForm = new CityForm();
		projectSearchForm.setCityForm(cityForm);
		projectSearchForm.setCompanyForm(companyForm);
		
		List<ProjectForm> projectFormList = projectSearchService.searchProjects(projectSearchForm);
		projectSearchForm.setProjectFormList(projectFormList);
		
		ModelAndView mv =  null;
		String listGrid = request.getParameter("listGrid");
		if(listGrid == null || listGrid.equals("") || listGrid.equals("List") ) {
			mv = new ModelAndView("gaurproject","projectSearchForm",projectSearchForm);
		} else if(listGrid.equals("Grid")) {
			mv = new ModelAndView("gaursonsGrid","projectSearchForm",projectSearchForm);
		}
		return mv;
 	}
	
	@RequestMapping(value="/projectlisting", method = RequestMethod.GET)
	public ModelAndView projectListing() {
		ProjectSearchForm projectSearchForm = new ProjectSearchForm();
		CompanyForm companyForm = new CompanyForm();
		companyForm.setCompanyName(GAURSONS_INDIA_LIMITED);
		CityForm cityForm = new CityForm();
		projectSearchForm.setCityForm(cityForm);
		projectSearchForm.setCompanyForm(companyForm);
		
		List<ProjectForm> projectFormList = projectSearchService.searchProjects(projectSearchForm);
		projectSearchForm.setProjectFormList(projectFormList);
		
		return new ModelAndView("gaurproject","projectSearchForm",projectSearchForm);
 	}
	
	@RequestMapping(value="/projectgrid", method = RequestMethod.GET)
	public ModelAndView projectGrid() {
		ProjectSearchForm projectSearchForm = new ProjectSearchForm();
		CompanyForm companyForm = new CompanyForm();
		companyForm.setCompanyName(GAURSONS_INDIA_LIMITED);
		CityForm cityForm = new CityForm();
		projectSearchForm.setCityForm(cityForm);
		projectSearchForm.setCompanyForm(companyForm);
		
		List<ProjectForm> projectFormList = projectSearchService.searchProjects(projectSearchForm);
		projectSearchForm.setProjectFormList(projectFormList);
		
		return new ModelAndView("gaursonsGrid","projectSearchForm",projectSearchForm);
 	}
	
	@RequestMapping(value="/aboutUsGaursons", method = RequestMethod.GET)
	public ModelAndView aboutUs() {
		ModelAndView mv = new ModelAndView("aboutUsGaursons");
		return mv;
 	}
	
	@RequestMapping(value="/contactusGaursons", method = RequestMethod.GET)
	public ModelAndView contactUs() {
		ModelAndView mv = new ModelAndView("contactusGaursons");
		return mv;
 	}
	
	@RequestMapping(value="/commercial", method = RequestMethod.GET)
	public ModelAndView commercialProject() {
		ProjectSearchForm projectSearchForm = new ProjectSearchForm();
		CompanyForm companyForm = new CompanyForm();
		companyForm.setCompanyName(GAURSONS_INDIA_LIMITED);
		CityForm cityForm = new CityForm();
		projectSearchForm.setCityForm(cityForm);
		projectSearchForm.setCompanyForm(companyForm);
		projectSearchForm.setPropertyTypeId(Constant.COMMERCIAL);
		
		List<ProjectForm> projectFormList = projectSearchService.searchProjects(projectSearchForm);
		projectSearchForm.setProjectFormList(projectFormList);
		
		return new ModelAndView("gaurproject","projectSearchForm",projectSearchForm);
 	}
	
	@RequestMapping(value="/residential", method = RequestMethod.GET)
	public ModelAndView residentialProject() {
		ProjectSearchForm projectSearchForm = new ProjectSearchForm();
		CompanyForm companyForm = new CompanyForm();
		companyForm.setCompanyName(GAURSONS_INDIA_LIMITED);
		CityForm cityForm = new CityForm();
		projectSearchForm.setCityForm(cityForm);
		projectSearchForm.setCompanyForm(companyForm);
		projectSearchForm.setPropertyTypeId(Constant.RESIDENTIAL);
		
		List<ProjectForm> projectFormList = projectSearchService.searchProjects(projectSearchForm);
		projectSearchForm.setProjectFormList(projectFormList);
		
		return new ModelAndView("gaurproject","projectSearchForm",projectSearchForm);
 	}
	
	@RequestMapping(value="/luxuryproject", method = RequestMethod.GET)
	public ModelAndView luxuryProject() {
		ModelAndView mv = new ModelAndView("luxary-project-gaursons");
		return mv;
 	}
}
