package com.bestnest.util;

import java.lang.reflect.InvocationTargetException;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;

import org.apache.commons.beanutils.BeanUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.bestnest.domain.Address;
import com.bestnest.domain.City;
import com.bestnest.domain.CityLocality;
import com.bestnest.domain.ClientInformation;
import com.bestnest.domain.Company;
import com.bestnest.domain.Project;
import com.bestnest.domain.ProjectDetails;
import com.bestnest.domain.ProjectImage;
import com.bestnest.domain.ProjectPrice;
import com.bestnest.domain.ProjectSimilar;
import com.bestnest.domain.PropertyType;
import com.bestnest.domain.SalesRegister;
import com.bestnest.domain.States;
import com.bestnest.domain.UserProfile;
import com.bestnest.portal.web.form.AddressForm;
import com.bestnest.portal.web.form.CityForm;
import com.bestnest.portal.web.form.CityLocalityForm;
import com.bestnest.portal.web.form.CompanyForm;
import com.bestnest.portal.web.form.ProjectDetailsForm;
import com.bestnest.portal.web.form.ProjectForm;
import com.bestnest.portal.web.form.ProjectImageForm;
import com.bestnest.portal.web.form.ProjectPriceForm;
import com.bestnest.portal.web.form.ProjectSimilarForm;
import com.bestnest.portal.web.form.PropertyTypeForm;
import com.bestnest.portal.web.form.PurposeForm;
import com.bestnest.portal.web.form.SalesRegisterForm;
import com.bestnest.portal.web.form.StatesForm;
import com.bestnest.portal.web.form.UserProfileForm;

public class BeanUtil {
	
	private static final Logger LOG = LoggerFactory.getLogger(BeanUtil.class);
	
	public static void copyPropertyTypeList(List<PropertyTypeForm> listFormTo,
			List<PropertyType> listFrom) {

		// Validate existence of the specified beans
		if (listFormTo == null) {
			throw new IllegalArgumentException("No destination bean specified");
		}
		if (listFrom == null) {
			throw new IllegalArgumentException("No origin bean specified");
		}

		if (listFrom.size() < 0) {
			return;
		}

		for (PropertyType propertyType : listFrom) {
			PropertyTypeForm propertyTypeForm = new PropertyTypeForm();
			try {
				BeanUtils.copyProperties(propertyTypeForm, propertyType);
				listFormTo.add(propertyTypeForm);
			} catch (IllegalAccessException e) {
				e.printStackTrace();
			} catch (InvocationTargetException e) {
				e.printStackTrace();
			}
		}

	}

	public static void copyCityList(List<CityForm> listFormTo,
			List<City> listFrom) {

		// Validate existence of the specified beans
		if (listFormTo == null) {
			throw new IllegalArgumentException("No destination bean specified");
		}
		if (listFrom == null) {
			throw new IllegalArgumentException("No origin bean specified");
		}

		if (listFrom.size() < 0) {
			return;
		}

		for (City city : listFrom) {
			CityForm cityForm = new CityForm();
			try {
				BeanUtils.copyProperties(cityForm, city);
				listFormTo.add(cityForm);
			} catch (IllegalAccessException e) {
				e.printStackTrace();
			} catch (InvocationTargetException e) {
				e.printStackTrace();
			}
		}

	}

	public static void copyCompanyList(List<CompanyForm> listFormTo,
			List<Company> listFrom) {

		// Validate existence of the specified beans
		if (listFormTo == null) {
			throw new IllegalArgumentException("No destination bean specified");
		}
		if (listFrom == null) {
			throw new IllegalArgumentException("No origin bean specified");
		}

		if (listFrom.size() < 0) {
			return;
		}

		for (Company company : listFrom) {
			CompanyForm companyForm = new CompanyForm();
			try {
				BeanUtils.copyProperties(companyForm, company);
				listFormTo.add(companyForm);
			} catch (IllegalAccessException e) {
				e.printStackTrace();
			} catch (InvocationTargetException e) {
				e.printStackTrace();
			}
		}

	}
	
	public static void copyProjectList(
			List<ProjectForm> listFormTo, List<Project> listFrom) {
		
		if (listFormTo == null) {
			throw new IllegalArgumentException("No destination bean specified");
		}
		if (listFrom == null) {
			throw new IllegalArgumentException("No origin bean specified");
		}

		if (listFrom.size() < 0) {
			return;
		}
		
		int nextProjectId = 0;
		int prevProjectId = 0;
		
		for (int i = 0; i < listFrom.size(); i++) {
			ProjectForm projectForm = new ProjectForm();
			Project project = listFrom.get(i);
			try {
				
				if(prevProjectId !=0 && i < listFrom.size()-1) {
					projectForm.setPrevProjectId(prevProjectId);
					nextProjectId = listFrom.get(i+1).getProjectId();
					projectForm.setNextProjectId(nextProjectId);
					prevProjectId = project.getProjectId();
				} else if(i < listFrom.size()-1){
					prevProjectId = project.getProjectId();
					nextProjectId = listFrom.get(i+1).getProjectId();
					projectForm.setPrevProjectId(prevProjectId);
					projectForm.setNextProjectId(nextProjectId);
				}
				
				copyProject(project, projectForm);
				
				listFormTo.add(projectForm);
				
			} catch (Exception ex) {
				LOG.error("Error while copying copyProjectList : ", ex);
			}
		}

	}


	public static void copyProjectListBasedOnURL(
			List<ProjectForm> listFormTo, List<ProjectForm> listFrom, String url){

		if (listFormTo == null) {
			throw new IllegalArgumentException("No destination bean specified");
		}
		if (listFrom == null) {
			throw new IllegalArgumentException("No origin bean specified");
		}

		if (listFrom.size() < 0) {
			return;
		}

		int prevProjectId = listFrom.get(0).getProjectId();
		int nextProjectId = listFrom.get(1).getProjectId();

		for (int i = 0; i < listFrom.size(); i++) {
			ProjectForm project = listFrom.get(i);
			if(url.trim().equalsIgnoreCase(project.getUrl().trim())){
				try {
					project.setPrevProjectId(prevProjectId);
					project.setNextProjectId(nextProjectId);
					listFormTo.add(project);
					break;
				} catch (Exception ex) {
					LOG.error("Error while copying copyProjectList : ", ex);
				}
			} else  if(i < listFrom.size()-2) {
				nextProjectId = listFrom.get(i+2).getProjectId();
				prevProjectId = project.getProjectId();
			}
		}


	}

	public static void copyProjectList(
			List<ProjectForm> listFormTo, List<ProjectForm> listFrom, int projectId) {
		
		if (listFormTo == null) {
			throw new IllegalArgumentException("No destination bean specified");
		}
		if (listFrom == null) {
			throw new IllegalArgumentException("No origin bean specified");
		}

		if (listFrom.size() < 0) {
			return;
		}
		
		int prevProjectId = listFrom.get(0).getProjectId();
		int nextProjectId = listFrom.get(1).getProjectId();
		
		for (int i = 0; i < listFrom.size(); i++) {
			ProjectForm project = listFrom.get(i);
			if(projectId == project.getProjectId()){
				try {
					project.setPrevProjectId(prevProjectId);
					project.setNextProjectId(nextProjectId);
					listFormTo.add(project);
					break;
				} catch (Exception ex) {
					LOG.error("Error while copying copyProjectList : ", ex);
				}
			} else  if(i < listFrom.size()-2) {
				nextProjectId = listFrom.get(i+2).getProjectId();
				prevProjectId = project.getProjectId();
			} 
		}

	}

	public static void copyProject(Project project, ProjectForm projectForm)
			throws IllegalAccessException, InvocationTargetException {
		BeanUtils.copyProperties(projectForm, project);
		
		projectForm.setCompanyForm(new CompanyForm());
		BeanUtils.copyProperties(projectForm.getCompanyForm(), project.getCompany());
		
		projectForm.setUserProfileForm(new UserProfileForm());
		BeanUtils.copyProperties(projectForm.getUserProfileForm(), project.getUserProfileByUserProfileId());
		
		projectForm.setAddressForm(new AddressForm());
		copyAdrress(projectForm.getAddressForm(), project.getAddress());
		
		projectForm.setPropertyTypeForm(new PropertyTypeForm());
		copyPropertyTypeForm(projectForm.getPropertyTypeForm(), project.getPropertyType());
		
		
		Set<ProjectDetailsForm> projectDetailsFormSet = new TreeSet<ProjectDetailsForm>(new ProjectDetailsFormComparator());
		for (ProjectDetails projectDetails : project.getProjectDetailses()) {
			ProjectDetailsForm projectDetailsForm = new ProjectDetailsForm();
			copyProjectDetailsForm(projectDetailsForm, projectDetails);
			projectDetailsFormSet.add(projectDetailsForm);
		}
		
		projectForm.setProjectDetailsFormSet(projectDetailsFormSet);
		
		List<ProjectSimilarForm> projectSimilarFormSet = new ArrayList<ProjectSimilarForm>();
		for (ProjectSimilar projectSimilar : project.getProjectSimilarsForProjectId()) {
			ProjectSimilarForm projectSimilarForm = new ProjectSimilarForm();
			copyProjectSimilarForm(projectSimilarForm, projectSimilar);
			projectSimilarFormSet.add(projectSimilarForm);
		}
		projectForm.setProjectSimilarsForProjectIdForm(projectSimilarFormSet);
		
		List<ProjectSimilarForm> projectSimilarsForProjectSimilarMappingIdFormSet = new ArrayList<ProjectSimilarForm>();
		for (ProjectSimilar projectSimilar : project.getProjectSimilarsForProjectSimilarMappingId()) {
			ProjectSimilarForm projectSimilarForm = new ProjectSimilarForm();
			copyProjectSimilarForm(projectSimilarForm, projectSimilar);
			projectSimilarsForProjectSimilarMappingIdFormSet.add(projectSimilarForm);
		}
		projectForm.setProjectSimilarsForProjectIdForm(projectSimilarsForProjectSimilarMappingIdFormSet);
	}
	
	private static void copyProjectSimilarForm(
			ProjectSimilarForm projectSimilarForm, ProjectSimilar projectSimilar) {
		
		try {
			BeanUtils.copyProperties(projectSimilarForm, projectSimilar);
		} catch (Exception ex) {
			LOG.error("Error while copying copyProjectSimilarForm : ", ex);
		}
		
		ProjectForm projectByProjectIdForm  = new ProjectForm();
		try {
			BeanUtils.copyProperties(projectByProjectIdForm, projectSimilar.getProjectByProjectId());
			projectSimilarForm.setProjectByProjectIdForm(projectByProjectIdForm);
		} catch (Exception ex) {
			LOG.error("Error while copying copyProjectSimilarForm>projectByProjectIdForm : ", ex);
		}
		
		ProjectForm projectByProjectSimilarMappingIdForm  = new ProjectForm();
		try {
			if(projectSimilar.getProjectByProjectSimilarMappingId() != null) {
				BeanUtils.copyProperties(projectByProjectSimilarMappingIdForm, projectSimilar.getProjectByProjectSimilarMappingId());
				projectSimilarForm.setProjectByProjectSimilarMappingIdForm(projectByProjectSimilarMappingIdForm);
			}
		} catch (Exception ex) {
			LOG.error("Error while copying copyProjectSimilarForm>projectByProjectSimilarMappingIdForm : ", ex);
		}
		
	}

	@SuppressWarnings("unused")
	private static void copyProjectImageForm(ProjectImageForm projectImageForm,
			ProjectImage projectImage) throws IllegalAccessException, InvocationTargetException {
		String[] slideImagesArr = projectImage.getSlideImages().split(",");
		projectImageForm.setSlideImagesArray(slideImagesArr);
		BeanUtils.copyProperties(projectImageForm, projectImage);
	}
	
	@SuppressWarnings("unused")
	public static void copyProjectDetailsForm(ProjectDetailsForm  projectDetailsForm,
			ProjectDetails projectDetails)  {
		
		String str = NumberFormat.getNumberInstance(java.util.Locale.getDefault()).format(projectDetails.getPrice());
		
		try {
			BeanUtils.copyProperties(projectDetailsForm, projectDetails);
		} catch (Exception ex) {
			LOG.error("Error while copying copyProjectDetailsForm : ", ex);
		}
		
		ProjectImageForm projectImageForm = new ProjectImageForm();
		try {
			copyProjectImageForm(projectImageForm, projectDetails.getProjectImage());
		} catch (Exception ex) {
			LOG.error("Error while copying copyProjectDetailsForm>projectImageForm : ", ex);
		}
		projectDetailsForm.setProjectImageForm(projectImageForm);
		
		PurposeForm purposeForm = new PurposeForm();
		try {
			BeanUtils.copyProperties(purposeForm, projectDetails.getPurpose());
		} catch (Exception ex) {
			LOG.error("Error while copying copyProjectDetailsForm>PurposeForm : ", ex);
		}
		projectDetailsForm.setPurposeForm(purposeForm);
		
		List<ProjectPriceForm> projectPriceFormList = new ArrayList<ProjectPriceForm>();
		try {
			copyProjectPricesForm(projectPriceFormList, projectDetails.getProjectPrices());
		} catch (Exception ex) {
			LOG.error("Error while copying copyProjectDetailsForm>PurposeForm : ", ex);
		}
		
		projectDetailsForm.setProjectPricesForm(projectPriceFormList);
		
		
	}
	
	private static void copyPropertyTypeForm(PropertyTypeForm propertyTypeForm,
			PropertyType propertyType) throws IllegalAccessException, InvocationTargetException {
		BeanUtils.copyProperties(propertyTypeForm, propertyType);
		
	}

	public static void copyAdrress(AddressForm addressForm, Address address) throws IllegalAccessException, InvocationTargetException {
		
		addressForm.setCityLocalityForm(new CityLocalityForm());
		BeanUtils.copyProperties(addressForm.getCityLocalityForm(), address.getCityLocality());
		
		addressForm.getCityLocalityForm().setCityForm(new CityForm());
		BeanUtils.copyProperties(addressForm.getCityLocalityForm().getCityForm(), address.getCityLocality().getCity());
		
		BeanUtils.copyProperties(addressForm, address);
	}

	public static void copySalesRegister(SalesRegisterForm salesRegisterForm, SalesRegister salesRegister) throws IllegalAccessException, InvocationTargetException {
		
		UserProfile userProfileByUserProfileId = new UserProfile();
		BeanUtils.copyProperties(userProfileByUserProfileId, salesRegisterForm.getUserProfileByUserProfileIdForm());
		salesRegister.setUserProfileByUserProfileId(userProfileByUserProfileId);
		
		UserProfile userProfileByAssociatesRmId = new UserProfile();
		BeanUtils.copyProperties(userProfileByAssociatesRmId, salesRegisterForm.getUserProfileByAssociatesRmIdForm());
		salesRegister.setUserProfileByAssociatesRmId(userProfileByAssociatesRmId);
		
		UserProfile userProfileByMentorCreditNoteId = new UserProfile();
		BeanUtils.copyProperties(userProfileByMentorCreditNoteId, salesRegisterForm.getUserProfileByMentorCreditNoteIdForm());
		salesRegister.setUserProfileByMentorCreditNoteId(userProfileByMentorCreditNoteId);
		
		UserProfile userProfileByTcReRpId = new UserProfile();
		BeanUtils.copyProperties(userProfileByTcReRpId, salesRegisterForm.getUserProfileByTcReRpIdForm());
		salesRegister.setUserProfileByTcReRpId(userProfileByTcReRpId);
		
		ClientInformation clientInformation = new ClientInformation();
		BeanUtils.copyProperties(clientInformation, salesRegisterForm.getClientInformationForm());
		
		
	}

	public static void copyProjectDetailsList(
			List<ProjectDetailsForm> projectDetailsFormList,
			List<ProjectDetails> selectedProjects) {
		for (ProjectDetails projectDetails : selectedProjects) {
			ProjectDetailsForm projectDetailsForm = new ProjectDetailsForm();
			copyProjectDetailsForm(projectDetailsForm, projectDetails);
			projectDetailsFormList.add(projectDetailsForm);
		}
	}

	public static void copyProjectPricesForm(List<ProjectPriceForm> projectPriceFormList,
			Set<ProjectPrice> projectPrices) {
		for (ProjectPrice projectPrice : projectPrices) {
			ProjectPriceForm projectPriceForm = new ProjectPriceForm();
			try {
				BeanUtils.copyProperties(projectPriceForm, projectPrice);
			} catch (IllegalAccessException e) {
				e.printStackTrace();
			} catch (InvocationTargetException e) {
				e.printStackTrace();
			}
			projectPriceFormList.add(projectPriceForm);
		}
	}
	
	public static void copyProjectPricesForm(ProjectPriceForm projectPriceForm, ProjectPrice projectPrice) {
			try {
				BeanUtils.copyProperties(projectPriceForm, projectPrice);
			} catch (IllegalAccessException e) {
				e.printStackTrace();
			} catch (InvocationTargetException e) {
				e.printStackTrace();
			}
	}

	public static List<UserProfileForm> convertToUserProfileFormList(
			List<UserProfile> userProfileList) {

		List<UserProfileForm> userProfileFormList = new ArrayList<UserProfileForm>();

		for (UserProfile userProfile : userProfileList) {

			UserProfileForm userProfileForm = new UserProfileForm();
			userProfileForm.setUserProfileId(userProfile.getUserProfileId());
			userProfileForm.setTitle(userProfile.getTitle());
			userProfileForm.setFirstName(userProfile.getFirstName());
			userProfileForm.setLastName(userProfile.getLastName());
			userProfileForm.setGender(userProfile.getGender());
			userProfileForm.setEmail(userProfile.getEmail());
			userProfileForm.setPassword(userProfile.getPassword());
			userProfileForm.setLandLineNumber(userProfile.getLandLineNumber());
			userProfileForm.setMobileNumber(userProfile.getMobileNumber());
			userProfileForm.setBriefDescription(userProfile
					.getBriefDescription());
			userProfileForm.setIsInquire(userProfile.getIsInquire());

			if (userProfile.getAddress() != null)
				userProfileForm.setAddressForm(convertToAddressForm(userProfile
						.getAddress()));

			userProfileFormList.add(userProfileForm);

		}

		return userProfileFormList;
	}
	
	/**
	 * Converts Address to AddressForm
	 * 
	 * @param address
	 * @return
	 */
	public static AddressForm convertToAddressForm(Address address) {

		AddressForm addressForm = new AddressForm();
		
		if(address != null) {
			
			addressForm.setAddressId(address.getAddressId());
			addressForm.setPin(address.getPin());
			addressForm.setStreet(address.getStreet());
			addressForm.setCityLocalityForm(cityLocalityToCityLocalityForm(address
				.getCityLocality()));
		}
		return addressForm;

	}
	
	/**
	 * Converts CityLocality to CityLocalityForm
	 * 
	 * @param cityLocality
	 * @return
	 */
	public static CityLocalityForm cityLocalityToCityLocalityForm(
			CityLocality cityLocality) {
		CityLocalityForm cityLocalityForm = new CityLocalityForm();
		cityLocalityForm.setCityLocalityId(cityLocality.getCityLocalityId());
		cityLocalityForm.setCityForm(cityToCityForm(cityLocality.getCity()));
		cityLocalityForm.setLocality(cityLocality.getLocality());
		return cityLocalityForm;
	}
	
	/**
	 * Converts city to CityForm
	 * 
	 * @param city
	 * @return
	 */
	public static CityForm cityToCityForm(City city) {

		CityForm cityForm = new CityForm();

		cityForm.setCityId(city.getCityId());
		cityForm.setName(city.getName());
		cityForm.setStatesForm(convertToStateForm(city.getStates()));

		return cityForm;
	}
	
	/**
	 * Converts State To StateForm
	 * 
	 * @param state
	 * @return StateForm
	 */
	public static StatesForm convertToStateForm(States state) {
		StatesForm statesForm = new StatesForm();
		statesForm.setStateId(state.getStateId());
		statesForm.setName(state.getName());
		return statesForm;
	}

	public static void copyProjectSimilar(List<ProjectSimilarForm> psfList,
			List<ProjectSimilar> projectSimilarList) {
		
		for (ProjectSimilar projectSimilar : projectSimilarList) {
			try {
				ProjectSimilarForm psf = new ProjectSimilarForm();
				psf.setProjectSimilarId(projectSimilar.getProjectSimilarId());
				
				ProjectForm projectByProjectIdForm = new ProjectForm();
				copyProject(projectSimilar.getProjectByProjectId(),   projectByProjectIdForm);
				psf.setProjectByProjectIdForm(projectByProjectIdForm);
				
				ProjectForm projectSimilarsForProjectSimilarMappingIdForm = new ProjectForm();
				copyProject(projectSimilar.getProjectByProjectSimilarMappingId(),   projectSimilarsForProjectSimilarMappingIdForm);
				psf.setProjectByProjectSimilarMappingIdForm(projectSimilarsForProjectSimilarMappingIdForm);
				
				psfList.add(psf);
				
			} catch (Exception ex) {
				ex.printStackTrace();
			} 
			
		}
			
	}
	
	public static String nFormatter2(int val) {
		String valInString = null;
		if(val >= 10000000) { 
			valInString = (val/10000000) + " Cr";
		}	
	    else if(val >= 100000) {
	    	valInString = (val/100000) + " Lac";
	    }
	    else if(val >= 1000) {
	    	valInString = (val/1000) + " K";
	    }
	    return valInString;
	}

	public static void copyCompany(CompanyForm companyForm, Company company) {
		try {
			BeanUtils.copyProperties(companyForm, company);
			List<ProjectForm> projectList = new ArrayList<ProjectForm>();
			copyProjectList(projectList, new ArrayList<Project>(company.getProjects()));
			companyForm.setProjecForms(projectList);
		} catch (Exception e) {
			LOG.error("Error while copying compnay : " + e);
		}	
	}
	
	
}
