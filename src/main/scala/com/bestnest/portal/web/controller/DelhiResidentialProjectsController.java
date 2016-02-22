package com.bestnest.portal.web.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.bestnest.portal.web.form.CityForm;
import com.bestnest.portal.web.form.ProjectForm;
import com.bestnest.portal.web.form.ProjectSearchForm;
import com.bestnest.service.ProjectSearchService;
import com.bestnest.util.Constant;

@Controller
@RequestMapping(value="/delhi-residential-projects")
public class DelhiResidentialProjectsController {
	
	@Autowired
	ProjectSearchService projectSearchService;
	
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView delhiResidentialProject(@ModelAttribute("projectSearchForm") ProjectSearchForm projectSearchForm, 
			BindingResult result,HttpServletRequest request) {
		
		// City 
		CityForm cityForm = createCity(Constant.DELHI_L_ZONE);
		projectSearchForm.setCityForm(cityForm);
		
		// Property Type 
		projectSearchForm.setPropertyTypeId(Constant.RESIDENTIAL);
				
		request.setAttribute("projectId", request.getParameter("projectId"));
		request.setAttribute("projectDetailsId", request.getParameter("projectDetailsId"));
		request.setAttribute("cityId", projectSearchForm.getCityForm().getCityId());
		request.setAttribute("cityName", (projectSearchForm.getCityForm().getName() == null 
				|| (projectSearchForm.getCityForm().getName().equals("City"))) ? "" : projectSearchForm.getCityForm().getName());
		request.setAttribute("propertyType", projectSearchForm.getPropertyTypeId());
		request.setAttribute("bedRoom", projectSearchForm.getBedRoom());
		request.setAttribute("minPrice", projectSearchForm.getMinPrice() == null ? 0 : projectSearchForm.getMinPrice());
		request.setAttribute("maxPrice", projectSearchForm.getMaxPrice() == null ? 0 : projectSearchForm.getMaxPrice());
		
		List<ProjectForm> projectFormList = projectSearchService.searchProjects(projectSearchForm);
		projectSearchForm.setProjectFormList(projectFormList);
		
		request.setAttribute("totalProjects", projectFormList.size());
		
		request.setAttribute("startIndex", 0);
		request.setAttribute("endIndex", 10);
		
		
		ModelAndView mv = new ModelAndView("projectGridSort","projectSearchForm",projectSearchForm);
		
		return mv;
	}
	
	private CityForm createCity(String cityName) {
		CityForm cityForm = new CityForm();
		cityForm.setName(cityName);
		return cityForm;
	}

}
