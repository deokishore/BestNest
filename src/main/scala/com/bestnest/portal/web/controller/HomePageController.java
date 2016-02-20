package com.bestnest.portal.web.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.bestnest.domain.City;
import com.bestnest.domain.Company;
import com.bestnest.domain.Project;
import com.bestnest.domain.ProjectDetails;
import com.bestnest.domain.ProjectPrice;
import com.bestnest.domain.PropertyType;
import com.bestnest.exception.CustomException;
import com.bestnest.portal.web.form.CityForm;
import com.bestnest.portal.web.form.CompanyForm;
import com.bestnest.portal.web.form.HomePageForm;
import com.bestnest.portal.web.form.ProjectDetailsForm;
import com.bestnest.portal.web.form.ProjectForm;
import com.bestnest.portal.web.form.ProjectSearchForm;
import com.bestnest.portal.web.form.PropertyTypeForm;
import com.bestnest.portal.web.form.UserProfileForm;
import com.bestnest.service.CityService;
import com.bestnest.service.CompanyService;
import com.bestnest.service.EmailService;
import com.bestnest.service.ProjectSearchService;
import com.bestnest.service.PropertyTypeService;
import com.bestnest.service.UserProfileService;
import com.bestnest.util.BeanUtil;


@Controller
@RequestMapping(value = "/")
public class HomePageController {
	
	public static final AtomicInteger counter = new AtomicInteger();
	
	private Logger logger = Logger.getLogger(HomePageController.class);

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
	
	@Autowired
	EmailService emailService;
	
	@RequestMapping(method = {RequestMethod.GET, RequestMethod.POST, RequestMethod.DELETE, RequestMethod.PUT})
    public ModelAndView redirect(HttpServletRequest request) throws MessagingException {
		logger.info("This is an entry to BestNest : " + request.getRemoteAddr() + " Request Number :  " + counter.incrementAndGet());
		String clientIp  = getClientIpAddr(request);
		List<ProjectForm> focusedProjectList =  projectSearchService.getFocusedProjects();
		ProjectSearchForm projectSearchForm = new ProjectSearchForm();
		projectSearchForm.setFocusedProjectList(focusedProjectList);
		ModelAndView mv = new ModelAndView("homePage","projectSearchForm", projectSearchForm);
		emailService.sendMailToDirectors(clientIp == null ? "No Ip Found" : clientIp);
		return mv;
    }
	
	
	@RequestMapping(value = "/{param1}/test")
    public @ResponseBody void test(
            @RequestParam(value = "Id", required = true) String Id,
            @RequestParam(value = "maxrows", required = true) int maxrows,
            @PathVariable(value = "param1") String param1,
            @PathVariable(value = "param2") String param2,
            @PathVariable(value = "param3") String param3) {
      
    }

	@RequestMapping(value="/homePage", method = RequestMethod.GET)
	public ModelAndView printWelcome(HttpServletRequest request) throws MessagingException {
		logger.info("This is an entry to BestNest : " + request.getRemoteAddr() + " Request Number :  " + counter.incrementAndGet());
		String clientIp  = getClientIpAddr(request);
		List<ProjectForm> focusedProjectList =  projectSearchService.getFocusedProjects();
		ProjectSearchForm projectSearchForm = new ProjectSearchForm();
		projectSearchForm.setFocusedProjectList(focusedProjectList);
		ModelAndView mv = new ModelAndView("home-page","projectSearchForm", projectSearchForm);
		emailService.sendMailToDirectors(clientIp == null ? "No Ip Found" : clientIp);
		return mv;
 	}
	
	@RequestMapping(value= "/homePageData", method = RequestMethod.GET)
	public @ResponseBody HomePageForm getHomePageData() {

		HomePageForm homePageForm = new HomePageForm();
		
		List<String> possessionStatusList = new ArrayList<String>();
		possessionStatusList.add("Under Construction");
		possessionStatusList.add("Ready To Move");
		possessionStatusList.add("New Launch");
		
		List<CityForm> cityListFormTo = new ArrayList<CityForm>();
		List<City> listFrom = cityService.fetchAllCity();
		BeanUtil.copyCityList(cityListFormTo, listFrom);

		List<PropertyTypeForm> listPrptTypeFormTo = new ArrayList<PropertyTypeForm>();
		List<PropertyType> listPropertyTypeFrom = propertyTypeService.fetchAllPropertyTypes();
		BeanUtil.copyPropertyTypeList(listPrptTypeFormTo, listPropertyTypeFrom);

		List<CompanyForm> listComapnyFormTo = new ArrayList<CompanyForm>();
		List<Company> listCompanyFrom = companyService.fetchAllCompanies();
		BeanUtil.copyCompanyList(listComapnyFormTo, listCompanyFrom);
		
		homePageForm.setPossessionStatusList(possessionStatusList);
		homePageForm.setCityFormList(cityListFormTo);
		homePageForm.setPropertyTypeFormList(listPrptTypeFormTo);
		homePageForm.setCompanyFormList(listComapnyFormTo);

		return homePageForm;
	}
	
	@RequestMapping(value= "/userProfileList", method = RequestMethod.GET)
	public @ResponseBody List<UserProfileForm> getUserProfileList() {
		List<UserProfileForm> userProfileFormList = BeanUtil.convertToUserProfileFormList(userProfileService.getUserProfiles());
		return userProfileFormList;
	}
	
	@RequestMapping(value= "/projectsOfBuilder", method = RequestMethod.GET)
	public @ResponseBody List<ProjectForm> projectsOfBuilder(@RequestParam("companyId") String companyId) {
				
		List<Company> listCompanyFrom = companyService.fetchAllCompanies();
		List<Project> selectedProjects = new ArrayList<Project>();
		List<ProjectForm> projecyFormList = new ArrayList<ProjectForm>();
		
		for (Company company : listCompanyFrom) {
			if(String.valueOf(company.getCompanyId()).equals(companyId)) {
				selectedProjects.addAll(company.getProjects());
				BeanUtil.copyProjectList(projecyFormList, selectedProjects);
				break;
			}
		}
		return projecyFormList;
	}
	
	@RequestMapping(value= "/projectDetailsOfProject", method = RequestMethod.GET)
	public @ResponseBody List<ProjectDetailsForm> projectDetailsOfProject(@RequestParam("projectId") String projectId) {
				
		List<Company> listCompanyFrom = companyService.fetchAllCompanies();
		List<ProjectDetails> selectedProjects = new ArrayList<ProjectDetails>();
		List<ProjectDetailsForm> projectDetailsFormList = new ArrayList<ProjectDetailsForm>();
		
		for (Company company : listCompanyFrom) {
			
			for (Project project : company.getProjects()) {
				if(String.valueOf(project.getProjectId()).equals(projectId)) {
					if(selectedProjects != null) {
						BeanUtil.copyProjectDetailsList(projectDetailsFormList, selectedProjects);
					}
					break;
				}
			}
			
			
		}
		return projectDetailsFormList;
	}
	
	@RequestMapping(value= "/projectDetailsOfPrjDetId", method = RequestMethod.GET)
	public @ResponseBody ProjectDetailsForm projectDetailsOfPrjDetId(@RequestParam("projectDetailsId") String projectDetailsId) {
		List<Company> listCompanyFrom = companyService.fetchAllCompanies();
		ProjectDetailsForm projectDetailsForm = new ProjectDetailsForm();
		for (Company company : listCompanyFrom) {
			for (Project project : company.getProjects()) {
				for (ProjectDetails projectDetails : project.getProjectDetailses()) {
					if(String.valueOf(projectDetails.getProjectDetailsId()).equals(projectDetailsId)) {
						BeanUtil.copyProjectDetailsForm(projectDetailsForm, projectDetails);
						break;
					}
				}
			}
		}
		return projectDetailsForm;
	}
	
	@RequestMapping(value= "/projectPlansOfAProjectDetail", method = RequestMethod.GET)
	public @ResponseBody List<String> projectPlansOfAProjectDetail(@RequestParam("projectDetailsId") String projectDetailsId) {
		
		List<Company> listCompanyFrom = companyService.fetchAllCompanies();
		List<String> projectPlanList = new ArrayList<String>();
		for (Company company : listCompanyFrom) {
			for (Project project : company.getProjects()) {
				for (ProjectDetails projectDetails : project.getProjectDetailses()) {
					if(String.valueOf(projectDetails.getProjectDetailsId()).equals(projectDetailsId)) {
						for (ProjectPrice projectPrice : projectDetails.getProjectPrices()) {
							projectPlanList.add(projectPrice.getPaymentPlan());
						}
						return projectPlanList;
					}
				}
			}
		}
		return projectPlanList; 
	}
	
	
	@ExceptionHandler(CustomException.class)
	public ModelAndView handleCustomException(CustomException ex) {
		System.out.println("Handling exception");
		ModelAndView model = new ModelAndView("error");
		model.addObject("exception", ex);
		return model;

	}
	
	@RequestMapping(value = "/getTags", method = RequestMethod.GET)
	public @ResponseBody List<String> getTags(@RequestParam String tagName) {

		return simulateSearchResult(tagName);

	}

	private List<String> simulateSearchResult(String tagName) {
		
		List<City> listFrom = cityService.fetchAllCity();
		List<ProjectForm> projectFormList =  projectSearchService.getProjectFormList();
		List<Company> companyList = companyService.fetchAllCompanies();
		
		List<String> result = new ArrayList<String>();
		
		// iterate a list and filter by tagName
		for (ProjectForm projectForm : projectFormList) {
			if (projectForm.getProjectName().toLowerCase().contains(tagName.toLowerCase())) {
				result.add(projectForm.getProjectName());
			}
		}
				
		// iterate a list and filter by tagName
		for (City city : listFrom) {
			if (city.getName().toLowerCase().contains(tagName.toLowerCase())) {
				result.add(city.getName());
			}
		}
		
		// iterate a list and filter by tagName
		for (Company company : companyList) {
			if (company.getCompanyName().toLowerCase().contains(tagName.toLowerCase())) {
				result.add(company.getCompanyName());
			}
		}

		return result;
	}
	
	public  String getClientIpAddr(HttpServletRequest request) {  
	    String ip = request.getHeader("X-Forwarded-For");  
	    if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {  
	        ip = request.getHeader("Proxy-Client-IP");  
	    }  
	    if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {  
	        ip = request.getHeader("WL-Proxy-Client-IP");  
	    }  
	    if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {  
	        ip = request.getHeader("HTTP_X_FORWARDED_FOR");  
	    }  
	    if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {  
	        ip = request.getHeader("HTTP_X_FORWARDED");  
	    }  
	    if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {  
	        ip = request.getHeader("HTTP_X_CLUSTER_CLIENT_IP");  
	    }  
	    if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {  
	        ip = request.getHeader("HTTP_CLIENT_IP");  
	    }  
	    if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {  
	        ip = request.getHeader("HTTP_FORWARDED_FOR");  
	    }  
	    if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {  
	        ip = request.getHeader("HTTP_FORWARDED");  
	    }  
	    if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {  
	        ip = request.getHeader("HTTP_VIA");  
	    }  
	    if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {  
	        ip = request.getHeader("REMOTE_ADDR");  
	    }  
	    if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {  
	        ip = request.getRemoteAddr();  
	    }  
	    return ip;  
	}

}
