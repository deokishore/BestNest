package com.bestnest.portal.web.controller;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.MissingServletRequestParameterException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.bestnest.exception.CustomException;
import com.bestnest.portal.web.form.CityForm;
import com.bestnest.portal.web.form.ClientInformationForm;
import com.bestnest.portal.web.form.CompanyForm;
import com.bestnest.portal.web.form.ProjectDetailsForm;
import com.bestnest.portal.web.form.ProjectForm;
import com.bestnest.portal.web.form.ProjectSearchForm;
import com.bestnest.portal.web.form.ProjectSimilarForm;
import com.bestnest.service.CityService;
import com.bestnest.service.ProjectSearchService;
import com.bestnest.service.ProjectSimilarService;

@Controller("/projectSearchPage")
public class ProjectSearchController {
	
	private Logger logger = Logger.getLogger(ProjectSearchController.class);
	
	@Autowired
	ProjectSearchService projectSearchService;
	
	@Autowired
	ProjectSimilarService projectSimilarService;
	
	@Autowired
	CityService cityService;
	
	

	@RequestMapping(value="/projectSearchPage", method = RequestMethod.POST)
	public ModelAndView projectSearchPage(@ModelAttribute("projectSearchForm") ProjectSearchForm projectSearchForm, 
			BindingResult result,HttpServletRequest request) {
		
		logger.info("Project Search for Property Type : " + projectSearchForm.getPropertyTypeId() + " : City : " + projectSearchForm.getCityForm().getCityId()
				+ " Company : " + projectSearchForm.getCompanyForm().getCompanyId() + " Bed: " + projectSearchForm.getBedRoom());
		
		request.setAttribute("projectId", request.getParameter("projectId"));
		request.setAttribute("projectDetailsId", request.getParameter("projectDetailsId"));
		request.setAttribute("cityId", projectSearchForm.getCityForm().getCityId());
		request.setAttribute("cityName", (projectSearchForm.getCityForm().getName() == null 
				|| (projectSearchForm.getCityForm().getName().equals("City"))) ? "" : projectSearchForm.getCityForm().getName());
		request.setAttribute("companyId", projectSearchForm.getCompanyForm().getCompanyId() == null ? 0 :projectSearchForm.getCompanyForm().getCompanyId());
		request.setAttribute("companyName", projectSearchForm.getCompanyForm().getCompanyName());
		request.setAttribute("propertyType", projectSearchForm.getPropertyTypeId());
		request.setAttribute("bedRoom", projectSearchForm.getBedRoom());
		request.setAttribute("minPrice", projectSearchForm.getMinPrice() == null ? 0 : projectSearchForm.getMinPrice());
		request.setAttribute("maxPrice", projectSearchForm.getMaxPrice() == null ? 0 : projectSearchForm.getMaxPrice());
		
		List<ProjectForm> projectFormList = null; 
				
		if(projectSearchForm.getTags() != null && !projectSearchForm.getTags().equals("")){
			projectFormList = projectSearchService.searchProjectsWithAutoCompleteField(projectSearchForm);
			projectFormList = projectSearchService.searchProjectsWithAutoCompleteField(projectSearchForm, projectFormList);
			projectSearchForm.setProjectFormList(projectFormList);
		} else {
			projectFormList = projectSearchService.searchProjects(projectSearchForm);
			projectSearchForm.setProjectFormList(projectFormList);
		}
		
		request.setAttribute("totalProjects", projectFormList.size());
		
		request.setAttribute("startIndex", 0);
		request.setAttribute("endIndex", 10);
		
		ModelAndView mv = new ModelAndView("projectGridSort","projectSearchForm",projectSearchForm);
		return mv;
	}

	@RequestMapping(value = "/projectSearchListPage", method = RequestMethod.GET)
	public ModelAndView projectSearchListPage(@ModelAttribute("projectSearchForm") ProjectSearchForm projectSearchForm, 
			BindingResult result,HttpServletRequest request) {
		
		String cityId = (String) request.getParameter("cityId") == null ?"": (String) request.getParameter("cityId");
		int companyId =Integer.parseInt(request.getParameter("companyId"));
		String propertyType = (String) request.getParameter("propertyType");
		
		CityForm cityForm = new CityForm();
		cityForm.setCityId(cityId);
		projectSearchForm.setCityForm(cityForm);
		
		CompanyForm companyForm = new CompanyForm();
		companyForm.setCompanyId(companyId);
		projectSearchForm.setCompanyForm(companyForm);
		
		projectSearchForm.setPropertyTypeId(propertyType);
		
		List<ProjectForm> projectFormList = projectSearchService.searchProjects(projectSearchForm);
		
		request.setAttribute("projectId", request.getParameter("projectId"));
		request.setAttribute("projectDetailsId", request.getParameter("projectDetailsId"));
		request.setAttribute("cityId", cityId);
		request.setAttribute("cityName",request.getParameter("cityName") == null ? "" : request.getParameter("cityName"));
		request.setAttribute("companyId",request.getParameter("companyId"));
		request.setAttribute("companyName",request.getParameter("companyName"));
		request.setAttribute("propertyType", request.getParameter("propertyType"));
		request.setAttribute("bedRoom", request.getParameter("bedRoom") == null ? 0 : request.getParameter("bedRoom"));
		request.setAttribute("minPrice", request.getParameter("minPrice") == null ? 0 : request.getParameter("minPrice"));
		request.setAttribute("maxPrice", request.getParameter("maxPrice") == null ? 0 : request.getParameter("maxPrice"));
		request.setAttribute("totalProjects", projectFormList.size());
		
		projectSearchForm.setProjectFormList(projectFormList);
		
		ModelAndView mv = new ModelAndView("projectListingSort","projectSearchForm",projectSearchForm);
		return mv;
	}
	
	@RequestMapping(value = "/projectSearchGridPage", method = RequestMethod.GET)
	public ModelAndView projectSearchGridPage(@ModelAttribute("projectSearchForm") ProjectSearchForm projectSearchForm, 
			BindingResult result, HttpServletRequest request) {
		String cityId = request.getParameter("cityId") == null ?"": (String) request.getParameter("cityId");
		int companyId =Integer.parseInt(request.getParameter("companyId"));
		String propertyType = (String) request.getParameter("propertyType");
		
		CityForm cityForm = new CityForm();
		cityForm.setCityId(cityId);
		projectSearchForm.setCityForm(cityForm);
		
		CompanyForm companyForm = new CompanyForm();
		companyForm.setCompanyId(companyId);
		projectSearchForm.setCompanyForm(companyForm);
		
		projectSearchForm.setPropertyTypeId(propertyType);
		
		List<ProjectForm> projectFormList = projectSearchService.searchProjects(projectSearchForm);
		
		
		request.setAttribute("projectId", request.getParameter("projectId"));
		request.setAttribute("projectDetailsId", request.getParameter("projectDetailsId"));
		request.setAttribute("cityId", cityId);
		request.setAttribute("cityName",request.getParameter("cityName") == null ? "" : request.getParameter("cityName"));
		request.setAttribute("companyId",request.getParameter("companyId"));
		request.setAttribute("companyName",request.getParameter("companyName"));
		request.setAttribute("propertyType", request.getParameter("propertyType"));
		request.setAttribute("bedRoom", request.getParameter("bedRoom") == null ? 0 : request.getParameter("bedRoom"));
		request.setAttribute("minPrice", request.getParameter("minPrice") == null ? 0 : request.getParameter("minPrice"));
		request.setAttribute("maxPrice", request.getParameter("maxPrice") == null ? 0 : request.getParameter("maxPrice"));
		request.setAttribute("totalProjects", projectFormList.size());
		
		
		projectSearchForm.setProjectFormList(projectFormList);
		
		ModelAndView mv = new ModelAndView("projectGridSort","projectSearchForm",projectSearchForm);
		return mv;
	}
	
	@RequestMapping(value = "/projectDetail", method = RequestMethod.GET)
	public ModelAndView projectDetail(@ModelAttribute("projectSearchForm") ProjectSearchForm projectSearchForm, 
			BindingResult result, final Model model, HttpServletRequest request) {
		
		int projectId = request.getParameter("projectId") == null ? 0: Integer.parseInt((String) request.getParameter("projectId")) ;
		ProjectForm projectForm = projectSearchService.getPropertyDetailsById(projectId);
		List<ProjectDetailsForm> sortedList = new ArrayList<ProjectDetailsForm>(projectForm.getProjectDetailsFormSet());
		Collections.sort(sortedList);
		List<ProjectSimilarForm> psfList = projectSimilarService.findgProjectByProjectSimilarMappingId(projectId);
		projectForm.setProjectSimilarsForProjectSimilarMappingIdForm(psfList);
		
		request.setAttribute("projectId", request.getParameter("projectId"));
		request.setAttribute("projectDetailsId", request.getParameter("projectDetailsId"));
		request.setAttribute("cityId", request.getParameter("cityId") == null ?"": request.getParameter("cityId"));
		request.setAttribute("cityName",request.getParameter("cityName") == null ? "" : request.getParameter("cityName"));
		request.setAttribute("companyId",request.getParameter("companyId"));
		request.setAttribute("companyName",request.getParameter("companyName"));
		request.setAttribute("propertyType", request.getParameter("propertyType"));
		request.setAttribute("bedRoom", request.getParameter("bedRoom") == null ? 0 : request.getParameter("bedRoom"));
		request.setAttribute("minPrice", request.getParameter("minPrice") == null ? 0 : request.getParameter("minPrice"));
		request.setAttribute("maxPrice", request.getParameter("maxPrice") == null ? 0 : request.getParameter("maxPrice"));
		request.setAttribute("gridList", request.getParameter("gridList"));

		model.addAttribute("clientInformationForm", new ClientInformationForm());

		ModelAndView mv = new ModelAndView("projectDetail","projectForm",projectForm);
		return mv;
	}
	
	
	@RequestMapping(value = "/projectDetailData", method=RequestMethod.GET) 
	protected @ResponseBody ProjectForm projectDetailData(@RequestParam(value = "projectId") Integer projectId) throws Exception {
		ProjectForm projectForm = projectSearchService.getPropertyDetailsById(projectId);
		return projectForm;
	}
	
	
	@ExceptionHandler(MissingServletRequestParameterException.class)
	public String missingParamterHandler(Exception exception) {
	  /*inspect and exception and obtain meaningful message*/
		System.out.println(exception);
	  return "index"; /*view name of your erro jsp*/
	}
	
	@ExceptionHandler(CustomException.class)
	public ModelAndView handleCustomException(CustomException ex) {
		System.out.println("Handling exception");
		ModelAndView model = new ModelAndView("error");
		model.addObject("exception", ex);
		return model;

	}

}
