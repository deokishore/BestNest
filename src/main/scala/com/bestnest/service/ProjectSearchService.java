package com.bestnest.service;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;

import javax.annotation.PostConstruct;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bestnest.dao.ProjectDAO;
import com.bestnest.dao.ProjectSimilarDAO;
import com.bestnest.domain.City;
import com.bestnest.domain.Company;
import com.bestnest.domain.Project;
import com.bestnest.portal.web.form.ProjectDetailsForm;
import com.bestnest.portal.web.form.ProjectForm;
import com.bestnest.portal.web.form.ProjectSearchForm;
import com.bestnest.util.BeanUtil;
import com.bestnest.util.Constant;
import com.bestnest.util.ProjectDetailsFormComparator;

@Service
public class ProjectSearchService {

	private static final Logger logger = LoggerFactory
			.getLogger(ProjectSearchService.class);

	private static List<ProjectForm> projectFormList = new ArrayList<ProjectForm>();

	private static List<ProjectForm> focusedProjectList = new ArrayList<ProjectForm>();

	@Autowired
	ProjectDAO projectDAO;

	@Autowired
	ProjectSimilarDAO projectSimilarDAO;

	@Autowired
	CityService cityService;

	@Autowired
	CompanyService companyService;

	@PostConstruct
	public void init() {
		logger.debug("Initializing Property Type..........");
		List<Project> projectList = projectDAO.selectAll();
		int projectCount = projectList.size();

		try {
			for (Project project : projectList) {

				ProjectForm projectForm = new ProjectForm();
				BeanUtil.copyProject(project, projectForm);
				projectFormList.add(projectForm);

				if (project.getFocusProject() != null
						&& project.getFocusProject()) {
					ProjectForm focusedProjectForm = new ProjectForm();
					BeanUtil.copyProject(project, focusedProjectForm);
					focusedProjectList.add(projectForm);
				}
			}
		} catch (Exception ex) {
			logger.error(" Error while initializing cache : ", ex);
		}
		projectList = null;
		System.gc();

		logger.debug("Initialized PropertyType, total property size ...... "
				+ projectCount);
	}

	public List<ProjectForm> getFocusedProjects() {
		return focusedProjectList;
	}

	public List<ProjectForm> getProjectFormList() {
		return projectFormList;
	}

	public ProjectForm getPropertyDetailsById(int projectId) {
		List<ProjectForm> listFormTo = new ArrayList<ProjectForm>();
		BeanUtil.copyProjectList(listFormTo, projectFormList, projectId);
		Set<ProjectDetailsForm> projectDetailsFormSet = new TreeSet<ProjectDetailsForm>(
				new ProjectDetailsFormComparator());
		for (ProjectDetailsForm projectDetails : listFormTo.get(0)
				.getProjectDetailsFormSet()) {
			projectDetailsFormSet.add(projectDetails);
		}
		ProjectForm projectForm = listFormTo.get(0);
		projectForm.setProjectDetailsFormSet(projectDetailsFormSet);
		return projectForm;
	}

	public List<ProjectForm> searchProjectsWithAutoCompleteField(ProjectSearchForm projectSearchForm) {
		
		List<ProjectForm> tmpProjectList = new ArrayList<ProjectForm>();
		
		if (projectSearchForm.getTags() != null) {
			if (isItACity(projectSearchForm.getTags())) {
				searchByCity(projectSearchForm, tmpProjectList);
				projectSearchForm.getCityForm().setName(projectSearchForm.getTags());
				return tmpProjectList;
			} else if (isItAProject(projectSearchForm.getTags())) {
				searchByProject(projectSearchForm, tmpProjectList);
				return tmpProjectList;
			} else if (isItACompany(projectSearchForm.getTags())) {
				projectSearchForm.getCompanyForm().setCompanyName(projectSearchForm.getTags());
				searchByCompany(projectSearchForm, tmpProjectList);
				return tmpProjectList;
			}
		}

		return null;
	}
	
	public List<ProjectForm> searchProjectsWithAutoCompleteField(ProjectSearchForm projectSearchForm, List<ProjectForm> alreadyFilteredProjectList) {
		

		String cityName = projectSearchForm.getCityForm() != null ? projectSearchForm.getCityForm().getName() : "";
		String cityID = "";
		cityID = getCityId(projectSearchForm, cityName, cityID);
		int companyId = getCompanyId(projectSearchForm);

		String propertyType = projectSearchForm.getPropertyTypeId();
		String possessionStatus = projectSearchForm.getPossessionStatus();
		
		String minPriceStr = projectSearchForm.getMinPrice();
		String maxPriceStr = projectSearchForm.getMaxPrice();
		int bedRoom = projectSearchForm.getBedRoom();

		int minPrice = 0, maxPrice = 0;

		if (minPriceStr != null && !minPriceStr.equals("null")
				&& !minPriceStr.equals("") && !minPriceStr.equals("Min")) {
			minPrice = minPriceStr.contains(Constant.LACS) ? Integer
					.parseInt(minPriceStr.replace(" Lacs", "00000")) : Integer
					.parseInt(minPriceStr.replace(Constant.CRORE, "0000000"));
			projectSearchForm.setMinPriceInt(minPrice);
		}

		if (maxPriceStr != null && !maxPriceStr.equals("null")
				&& !maxPriceStr.equals("") && !maxPriceStr.equals("Max")) {
			maxPrice = maxPriceStr.contains(Constant.LACS) ? Integer
					.parseInt(maxPriceStr.replace(" Lacs", "00000")) : Integer
					.parseInt(maxPriceStr.replace(Constant.CRORE, "0000000"));
			projectSearchForm.setMaxPriceInt(maxPrice == 0 ? 100000000
					: maxPrice);
		} else if (maxPriceStr == null || maxPriceStr.equals("")) {
			projectSearchForm.setMaxPriceInt(100000000);
		}

		List<ProjectForm> tmpProjectList = new ArrayList<ProjectForm>();
		
		List<ProjectForm> tmpProjectList2 = new ArrayList<ProjectForm>();
		
		tmpProjectList =  alreadyFilteredProjectList;
		
		if(propertyType != null && !propertyType.equals("") && !propertyType.equals("All Type")) {
			tmpProjectList = filterPropertyType(propertyType, tmpProjectList);
		}
		
		if(possessionStatus != null && !possessionStatus.equals("") && !projectSearchForm.getPossessionStatus().equals("All")) {
			tmpProjectList = filterPossessionStatus(projectSearchForm, tmpProjectList);
		}
		
		
		
		if ((cityID != null && !cityID.equals("")) && companyId != 0) {

			for (ProjectForm projectForm : tmpProjectList) {
				if (projectForm.getCompanyForm().getCompanyId()
						.equals(companyId)	&& projectForm.getAddressForm().getCityLocalityForm().getCityForm().getCityId()
								.equalsIgnoreCase(cityID)) {
					
						for (ProjectDetailsForm projectDetails : projectForm.getProjectDetailsFormSet()) {
							if (projectDetails.getBedRooms() >= bedRoom) {
								tmpProjectList2.add(projectForm);
								break;
							}
					
					}
				}
			}

			return filterPrice(projectSearchForm, tmpProjectList2);

		} else if ((cityID == null || cityID.equals("")) && companyId != 0) {

			for (ProjectForm projectForm : tmpProjectList) {
				if (projectForm.getCompanyForm().getCompanyId().equals(companyId)) {
						for (ProjectDetailsForm projectDetailsForm : projectForm
								.getProjectDetailsFormSet()) {
							if (projectDetailsForm.getBedRooms() >= bedRoom) {
								tmpProjectList2.add(projectForm);
								break;
							}
						}
				}
			}

			return filterPrice(projectSearchForm, tmpProjectList2);

		} else if ((cityID != null && !cityID.equals("")
				&& !cityID.equals("All") && !cityID.equals("null"))
				&& companyId == 0) {

			for (ProjectForm projectForm : tmpProjectList) {
				if (projectForm.getAddressForm().getCityLocalityForm()
						.getCityForm().getCityId().equalsIgnoreCase(cityID)) {

						for (ProjectDetailsForm projectDetailsForm : projectForm.getProjectDetailsFormSet()) {
							if (projectDetailsForm.getBedRooms() >= bedRoom) {
								tmpProjectList2.add(projectForm);
								break;
							}
						}
				}
			}
			
			return filterPrice(projectSearchForm, tmpProjectList2);

		} else if ((cityID == null || cityID.equals("")) && companyId == 0) {
			
			for (ProjectForm projectForm : tmpProjectList) {
					for (ProjectDetailsForm projectDetails : projectForm.getProjectDetailsFormSet()) {
						if (projectDetails.getBedRooms() >= bedRoom) {
							tmpProjectList2.add(projectForm);
							break;
						}
					}
			}
			return filterPrice(projectSearchForm, tmpProjectList2);

		} else if (bedRoom != 0) {

			for (ProjectForm projectForm : tmpProjectList) {
				for (ProjectDetailsForm projectDetailsForm : projectForm.getProjectDetailsFormSet()) {
					if (projectDetailsForm.getBedRooms() >= bedRoom) {
						tmpProjectList2.add(projectForm);
						break;
					}
				}
			}
			
			return filterPrice(projectSearchForm, tmpProjectList2);
			
		} else {
			
			return filterPrice(projectSearchForm, tmpProjectList);
			
		}
		
		
	}

	private void searchByCity(ProjectSearchForm projectSearchForm,
			List<ProjectForm> tmpProjectList) {
		
		String cityID = getCityId(null, projectSearchForm.getTags(), null);
		for (ProjectForm projectForm : projectFormList) {
			if (projectForm.getAddressForm().getCityLocalityForm().getCityForm().getCityId().equalsIgnoreCase(cityID)) {
				tmpProjectList.add(projectForm);
			}
		}
		
	}
	
	private void searchByCompany(ProjectSearchForm projectSearchForm, List<ProjectForm> tmpProjectList) {
		
		int companyId = getCompanyId(projectSearchForm);
		for (ProjectForm projectForm : projectFormList) {
			if (projectForm.getCompanyForm().getCompanyId() == companyId) {
				tmpProjectList.add(projectForm);
			}
		}
		
	}
	
	private void searchByProject(ProjectSearchForm projectSearchForm, List<ProjectForm> tmpProjectList) {
		
		String projectName =  projectSearchForm.getTags();
		for (ProjectForm projectForm : projectFormList) {
			if (projectForm.getProjectName().equalsIgnoreCase(projectName)) {
				tmpProjectList.add(projectForm);
			}
		}
		
	}

	public List<ProjectForm> searchProjects(ProjectSearchForm projectSearchForm) {

		String cityName = projectSearchForm.getCityForm() != null ? projectSearchForm.getCityForm().getName() : "";
		String cityID = "";
		cityID = getCityId(projectSearchForm, cityName, cityID);
		int companyId = getCompanyId(projectSearchForm);

		String propertyType = projectSearchForm.getPropertyTypeId();
		String possessionStatus = projectSearchForm.getPossessionStatus();
		
		String minPriceStr = projectSearchForm.getMinPrice();
		String maxPriceStr = projectSearchForm.getMaxPrice();
		int bedRoom = projectSearchForm.getBedRoom();

		int minPrice = 0, maxPrice = 0;

		if (minPriceStr != null && !minPriceStr.equals("null")
				&& !minPriceStr.equals("") && !minPriceStr.equals("Min")) {
			minPrice = minPriceStr.contains(Constant.LACS) ? Integer
					.parseInt(minPriceStr.replace(" Lacs", "00000")) : Integer
					.parseInt(minPriceStr.replace(Constant.CRORE, "0000000"));
			projectSearchForm.setMinPriceInt(minPrice);
		}

		if (maxPriceStr != null && !maxPriceStr.equals("null")
				&& !maxPriceStr.equals("") && !maxPriceStr.equals("Max")) {
			maxPrice = maxPriceStr.contains(Constant.LACS) ? Integer
					.parseInt(maxPriceStr.replace(" Lacs", "00000")) : Integer
					.parseInt(maxPriceStr.replace(Constant.CRORE, "0000000"));
			projectSearchForm.setMaxPriceInt(maxPrice == 0 ? 100000000
					: maxPrice);
		} else if (maxPriceStr == null || maxPriceStr.equals("")) {
			projectSearchForm.setMaxPriceInt(100000000);
		}

		List<ProjectForm> tmpProjectList = new ArrayList<ProjectForm>();
		
		List<ProjectForm> tmpProjectList2 = new ArrayList<ProjectForm>();
		
		tmpProjectList =  projectFormList;
		
		if(propertyType != null && !propertyType.equals("") && !propertyType.equals("All Type")) {
			tmpProjectList = filterPropertyType(propertyType, tmpProjectList);
		}
		
		if(possessionStatus != null && !possessionStatus.equals("") && !projectSearchForm.getPossessionStatus().equals("All")) {
			tmpProjectList = filterPossessionStatus(projectSearchForm, tmpProjectList);
		}
		
		
		
		if ((cityID != null && !cityID.equals("")) && companyId != 0) {

			for (ProjectForm projectForm : tmpProjectList) {
				if (projectForm.getCompanyForm().getCompanyId()
						.equals(companyId)	&& projectForm.getAddressForm().getCityLocalityForm().getCityForm().getCityId()
								.equalsIgnoreCase(cityID)) {
					
						for (ProjectDetailsForm projectDetails : projectForm.getProjectDetailsFormSet()) {
							if (projectDetails.getBedRooms() >= bedRoom) {
								tmpProjectList2.add(projectForm);
								break;
							}
					
					}
				}
			}

			return filterPrice(projectSearchForm, tmpProjectList2);

		} else if ((cityID == null || cityID.equals("")) && companyId != 0) {

			for (ProjectForm projectForm : tmpProjectList) {
				if (projectForm.getCompanyForm().getCompanyId().equals(companyId)) {
						for (ProjectDetailsForm projectDetailsForm : projectForm
								.getProjectDetailsFormSet()) {
							if (projectDetailsForm.getBedRooms() >= bedRoom) {
								tmpProjectList2.add(projectForm);
								break;
							}
						}
				}
			}

			return filterPrice(projectSearchForm, tmpProjectList2);

		} else if ((cityID != null && !cityID.equals("")
				&& !cityID.equals("All") && !cityID.equals("null"))
				&& companyId == 0) {

			for (ProjectForm projectForm : tmpProjectList) {
				if (projectForm.getAddressForm().getCityLocalityForm()
						.getCityForm().getCityId().equalsIgnoreCase(cityID)) {

						for (ProjectDetailsForm projectDetailsForm : projectForm.getProjectDetailsFormSet()) {
							if (projectDetailsForm.getBedRooms() >= bedRoom) {
								tmpProjectList2.add(projectForm);
								break;
							}
						}
				}
			}
			
			return filterPrice(projectSearchForm, tmpProjectList2);

		} else if ((cityID == null || cityID.equals("")) && companyId == 0) {
			
			for (ProjectForm projectForm : tmpProjectList) {
					for (ProjectDetailsForm projectDetails : projectForm.getProjectDetailsFormSet()) {
						if (projectDetails.getBedRooms() >= bedRoom) {
							tmpProjectList2.add(projectForm);
							break;
						}
					}
			}
			return filterPrice(projectSearchForm, tmpProjectList2);

		} else if (bedRoom != 0) {

			for (ProjectForm projectForm : tmpProjectList) {
				for (ProjectDetailsForm projectDetailsForm : projectForm.getProjectDetailsFormSet()) {
					if (projectDetailsForm.getBedRooms() >= bedRoom) {
						tmpProjectList2.add(projectForm);
						break;
					}
				}
			}
			
			return filterPrice(projectSearchForm, tmpProjectList2);
			
		} else {
			
			return filterPrice(projectSearchForm, tmpProjectList);
			
		}
	}

	private void sortProjectDetailByBeds(List<ProjectForm> tmpProjectList) {
		for (ProjectForm projectForm : tmpProjectList) {
			Set<ProjectDetailsForm> projectDetailsFormSet = new TreeSet<ProjectDetailsForm>(
					new ProjectDetailsFormComparator());
			for (ProjectDetailsForm projectDetails : projectForm
					.getProjectDetailsFormSet()) {
				projectDetailsFormSet.add(projectDetails);
			}
			projectForm.setProjectDetailsFormSet(projectDetailsFormSet);
		}
	}

	private List<ProjectForm> filterPrice(ProjectSearchForm projectSearchForm,
			List<ProjectForm> prjFormList) {
		List<ProjectForm> tmpProjectList = new ArrayList<ProjectForm>();
		for (ProjectForm projectForm : prjFormList) {
			Set<ProjectDetailsForm> projectDeatilsSet = new HashSet<ProjectDetailsForm>();
			for (ProjectDetailsForm pdForm : projectForm .getProjectDetailsFormSet()) {
				if (pdForm.getPrice() >= projectSearchForm.getMinPriceInt()	
						&& pdForm.getPrice() <= projectSearchForm.getMaxPriceInt()) {
					projectDeatilsSet.add(pdForm);
				}
			}
			if (projectDeatilsSet.size() > 0) {
				projectForm.setProjectDetailsFormSet(projectDeatilsSet);
				tmpProjectList.add(projectForm);
			}
		}

		sortProjectDetailByBeds(tmpProjectList);

		return tmpProjectList;
	}
	
	private List<ProjectForm> filterPossessionStatus(ProjectSearchForm projectSearchForm, List<ProjectForm> prjFormList) {
		
		List<ProjectForm> tmpProjectList = new ArrayList<ProjectForm>();
		
		for (ProjectForm projectForm : prjFormList) {
			if (projectForm.getPossessionStatus() != null && projectForm.getPossessionStatus().trim().equalsIgnoreCase(projectSearchForm.getPossessionStatus())) {
				tmpProjectList.add(projectForm);
			}
		}
		return tmpProjectList;
	}
	
	
	private List<ProjectForm> filterPropertyType(String propertyTypeId, List<ProjectForm> prjFormList) {
		
		List<ProjectForm> tmpProjectList = new ArrayList<ProjectForm>();
		
		for (ProjectForm projectForm : prjFormList) {
			if (projectForm.getPropertyTypeForm().getPropertyTypeId() != null 
					&& projectForm.getPropertyTypeForm().getPropertyTypeId().trim().equals(propertyTypeId)) {
				tmpProjectList.add(projectForm);
			}
		}
		return tmpProjectList;
	}
	private String getCityId(ProjectSearchForm projectSearchForm,String cityName, String cityID) {
		if (cityName != null && !cityName.equals("")) {
			City city = cityService.getCityByName(cityName);
			if (city != null) {
				cityID = city.getCityId();
			} else {
				return cityName;
			}
		} else {
			if (projectSearchForm.getCityForm().getCityId() != null) {
				cityID = projectSearchForm.getCityForm().getCityId();
			}
		}
		return cityID;
	}

	private Integer getCompanyId(ProjectSearchForm projectSearchForm) {

		Integer companyId = 0;
		String companyName = projectSearchForm.getCompanyForm() != null ? projectSearchForm
				.getCompanyForm().getCompanyName() : "";
		if (companyName != null && !companyName.equals("")) {
			Company company = companyService.getCompanyByName(companyName);
			if (company != null) {
				companyId = company.getCompanyId();
			} else {
				return 0;
			}
		} else {
			if (projectSearchForm.getCompanyForm() != null
					&& projectSearchForm.getCompanyForm().getCompanyId() != null) {
				companyId = projectSearchForm.getCompanyForm().getCompanyId();
			}
		}
		return companyId;
	}

	private boolean isItAProject(String tagName) {
		for (ProjectForm projectForm : projectFormList) {
			if (projectForm.getProjectName().equalsIgnoreCase(tagName)) {
				return true;
			}
		}
		return false;
	}

	private boolean isItACompany(String tagName) {
		List<Company> companyList = companyService.fetchAllCompanies();
		// iterate a list and filter by tagName
		for (Company company : companyList) {
			if (company.getCompanyName().equalsIgnoreCase(tagName)) {
				return true;
			}
		}
		return false;
	}

	private boolean isItACity(String tagName) {
		List<City> listFrom = cityService.fetchAllCity();
		// iterate a list and filter by tagName
		for (City city : listFrom) {
			if (city.getName().equalsIgnoreCase(tagName)) {
				return true;
			}
		}
		return false;
	}

}
