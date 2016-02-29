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
import com.bestnest.util.ProjectDetailsFormComparator;

@Controller
@RequestMapping(value="/mahagunproject")
public class MahagunController {
	
	private static final Logger logger = LoggerFactory.getLogger(MahagunController.class);
	
	private static final String MAHAGUN_GROUP = "Mahagun Group";
	private static final String RESIDENTIAL = "Residential";
	private static final String COMMERCIAL = "Commercial";
	
	@Autowired
	ProjectSearchService projectSearchService;
	
	/**
	 */
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView mahagunProject(HttpServletRequest request) {
		logger.info("  Mahagun Project Microsite Called : ");
		
		ProjectSearchForm projectSearchForm = new ProjectSearchForm();
		CompanyForm companyForm = new CompanyForm();
		companyForm.setCompanyName(MAHAGUN_GROUP);
		CityForm cityForm = new CityForm();
		projectSearchForm.setCityForm(cityForm);
		projectSearchForm.setCompanyForm(companyForm);
		
		List<ProjectForm> projectFormList = projectSearchService.searchProjects(projectSearchForm);
		projectSearchForm.setProjectFormList(projectFormList);
		
		ModelAndView mv =  null;
		String listGrid = request.getParameter("listGrid");
		if(listGrid == null || listGrid.equals("") || listGrid.equals("List") ) {
			mv = new ModelAndView("mahagunproject","projectSearchForm",projectSearchForm);
		} else if(listGrid.equals("Grid")) {
			mv = new ModelAndView("mahagunprojectGrid","projectSearchForm",projectSearchForm);
		}
		return mv;
 	}
	
	@RequestMapping(value="/projectlisting", method = RequestMethod.GET)
	public ModelAndView projectListing() {
		ProjectSearchForm projectSearchForm = new ProjectSearchForm();
		CompanyForm companyForm = new CompanyForm();
		companyForm.setCompanyName(MAHAGUN_GROUP);
		CityForm cityForm = new CityForm();
		projectSearchForm.setCityForm(cityForm);
		projectSearchForm.setCompanyForm(companyForm);
		
		List<ProjectForm> projectFormList = projectSearchService.searchProjects(projectSearchForm);
		projectSearchForm.setProjectFormList(projectFormList);
		
		return new ModelAndView("mahagunproject","projectSearchForm",projectSearchForm);
 	}
	
	@RequestMapping(value="/projectgrid", method = RequestMethod.GET)
	public ModelAndView projectGrid() {
		ProjectSearchForm projectSearchForm = new ProjectSearchForm();
		CompanyForm companyForm = new CompanyForm();
		companyForm.setCompanyName(MAHAGUN_GROUP);
		CityForm cityForm = new CityForm();
		projectSearchForm.setCityForm(cityForm);
		projectSearchForm.setCompanyForm(companyForm);
		
		List<ProjectForm> projectFormList = projectSearchService.searchProjects(projectSearchForm);
		projectSearchForm.setProjectFormList(projectFormList);
		
		return new ModelAndView("mahagunprojectGrid","projectSearchForm",projectSearchForm);
 	}
	
	
	@RequestMapping(value="/commercial", method = RequestMethod.GET)
	public ModelAndView commercialProject() {
		ProjectSearchForm projectSearchForm = new ProjectSearchForm();
		CompanyForm companyForm = new CompanyForm();
		companyForm.setCompanyName(MAHAGUN_GROUP);
		CityForm cityForm = new CityForm();
		projectSearchForm.setCityForm(cityForm);
		projectSearchForm.setCompanyForm(companyForm);
		projectSearchForm.setPropertyTypeId(COMMERCIAL);
		
		List<ProjectForm> projectFormList = projectSearchService.searchProjects(projectSearchForm);
		projectSearchForm.setProjectFormList(projectFormList);
		
		return new ModelAndView("mahagunproject","projectSearchForm",projectSearchForm);
 	}
	
	@RequestMapping(value="/residential", method = RequestMethod.GET)
	public ModelAndView residentialProject() {
		ProjectSearchForm projectSearchForm = new ProjectSearchForm();
		CompanyForm companyForm = new CompanyForm();
		companyForm.setCompanyName(MAHAGUN_GROUP);
		CityForm cityForm = new CityForm();
		projectSearchForm.setCityForm(cityForm);
		projectSearchForm.setCompanyForm(companyForm);
		projectSearchForm.setPropertyTypeId(RESIDENTIAL);
		
		List<ProjectForm> projectFormList = projectSearchService.searchProjects(projectSearchForm);
		projectSearchForm.setProjectFormList(projectFormList);
		
		return new ModelAndView("mahagunproject","projectSearchForm",projectSearchForm);
}

	@RequestMapping(value="/aboutus", method = RequestMethod.GET)
	public ModelAndView aboutUs() {
		ModelAndView mv = new ModelAndView("aboutUsMahagun");
		return mv;
	}

	@RequestMapping(value="/contactus", method = RequestMethod.GET)
	public ModelAndView contactUs() {
		ModelAndView mv = new ModelAndView("contactUsMahagun");
		return mv;
	}


}
