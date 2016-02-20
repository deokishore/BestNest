package com.bestnest.portal.web.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bestnest.domain.City;
import com.bestnest.domain.Company;
import com.bestnest.portal.web.form.CityForm;
import com.bestnest.portal.web.form.CompanyForm;
import com.bestnest.portal.web.form.HomePageForm;
import com.bestnest.service.CityService;
import com.bestnest.service.CompanyService;
import com.bestnest.service.ProjectSearchService;
import com.bestnest.service.PropertyTypeService;
import com.bestnest.service.UserProfileService;
import com.bestnest.util.BeanUtil;

@Controller
public class MicroSiteController {
	
	@Autowired
	CityService cityService;

	@Autowired
	PropertyTypeService propertyTypeService;

	@Autowired 
	CompanyService companyService;
	
	@Autowired 
	UserProfileService userProfileService;
	
	@Autowired
	ProjectSearchService projectSearchService; 
	
	@RequestMapping(value= "/microSiteData", method = RequestMethod.GET)
	public @ResponseBody HomePageForm getHomePageData(@RequestParam("companyName") String companyName) {
		HomePageForm homePageForm = new HomePageForm();
		
		List<CityForm> cityListFormTo = new ArrayList<CityForm>();
		List<City> listFrom = cityService.fetchAllCity();
		BeanUtil.copyCityList(cityListFormTo, listFrom);
		
		Company company = companyService.getCompanyByName(companyName);
		CompanyForm companyForm = new CompanyForm();
		BeanUtil.copyCompany(companyForm, company);	
		
		homePageForm.setCityFormList(cityListFormTo);
		//homePageForm.setProjectForms(companyForm.getProjecForms());
	
		return homePageForm;
	}


	private List<CityForm> getAllCity() {
		List<CityForm> cityListFormTo = new ArrayList<CityForm>();
		List<City> listFrom = cityService.fetchAllCity();
		BeanUtil.copyCityList(cityListFormTo, listFrom);
		return cityListFormTo;
	}
	

}
