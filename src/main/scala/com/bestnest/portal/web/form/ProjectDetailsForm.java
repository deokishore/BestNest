package com.bestnest.portal.web.form;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;



public class ProjectDetailsForm implements Comparable<ProjectDetailsForm> {
	
	private Integer projectDetailsId;
	
	private PurposeForm purposeForm;
	private ProjectForm projectForm;
	private ProjectImageForm projectImageForm;
	
	private String projectDetailsName;
	private Integer bedRooms;
	private Integer bathRooms;
	private String furnished;
	private String possessionStatus;
	private Integer floorNumber;
	private Integer totalFloors;
	private String additionalRooms;
	private String facing;
	private String overLooking;
	private Integer ageOfConstruction;
	private String transactionType;
	private String typeOfOwnership;
	private Integer size;
	private Integer price;
	private String homeLoanOffered;
	private String bestDeal;
	private String overview;
	private String amenities;
	private List<ProjectPriceForm> projectPricesForm = new ArrayList<ProjectPriceForm>(0);
	private Set<SalesRegisterForm> salesRegistersForm = new HashSet<SalesRegisterForm>(0);
	public Integer getProjectDetailsId() {
		return projectDetailsId;
	}
	public void setProjectDetailsId(Integer projectDetailsId) {
		this.projectDetailsId = projectDetailsId;
	}
	public PurposeForm getPurposeForm() {
		return purposeForm;
	}
	public void setPurposeForm(PurposeForm purposeForm) {
		this.purposeForm = purposeForm;
	}
	public ProjectForm getProjectForm() {
		return projectForm;
	}
	public void setProjectForm(ProjectForm projectForm) {
		this.projectForm = projectForm;
	}
	public ProjectImageForm getProjectImageForm() {
		return projectImageForm;
	}
	public void setProjectImageForm(ProjectImageForm projectImageForm) {
		this.projectImageForm = projectImageForm;
	}
	public String getProjectDetailsName() {
		return projectDetailsName;
	}
	public void setProjectDetailsName(String projectDetailsName) {
		this.projectDetailsName = projectDetailsName;
	}
	public Integer getBedRooms() {
		return bedRooms;
	}
	public void setBedRooms(Integer bedRooms) {
		this.bedRooms = bedRooms;
	}
	public Integer getBathRooms() {
		return bathRooms;
	}
	public void setBathRooms(Integer bathRooms) {
		this.bathRooms = bathRooms;
	}
	public String getFurnished() {
		return furnished;
	}
	public void setFurnished(String furnished) {
		this.furnished = furnished;
	}
	public String getPossessionStatus() {
		return possessionStatus;
	}
	public void setPossessionStatus(String possessionStatus) {
		this.possessionStatus = possessionStatus;
	}
	public Integer getFloorNumber() {
		return floorNumber;
	}
	public void setFloorNumber(Integer floorNumber) {
		this.floorNumber = floorNumber;
	}
	public Integer getTotalFloors() {
		return totalFloors;
	}
	public void setTotalFloors(Integer totalFloors) {
		this.totalFloors = totalFloors;
	}
	public String getAdditionalRooms() {
		return additionalRooms;
	}
	public void setAdditionalRooms(String additionalRooms) {
		this.additionalRooms = additionalRooms;
	}
	public String getFacing() {
		return facing;
	}
	public void setFacing(String facing) {
		this.facing = facing;
	}
	public String getOverLooking() {
		return overLooking;
	}
	public void setOverLooking(String overLooking) {
		this.overLooking = overLooking;
	}
	public Integer getAgeOfConstruction() {
		return ageOfConstruction;
	}
	public void setAgeOfConstruction(Integer ageOfConstruction) {
		this.ageOfConstruction = ageOfConstruction;
	}
	public String getTransactionType() {
		return transactionType;
	}
	public void setTransactionType(String transactionType) {
		this.transactionType = transactionType;
	}
	public String getTypeOfOwnership() {
		return typeOfOwnership;
	}
	public void setTypeOfOwnership(String typeOfOwnership) {
		this.typeOfOwnership = typeOfOwnership;
	}
	public Integer getSize() {
		return size;
	}
	public void setSize(Integer size) {
		this.size = size;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	public String getHomeLoanOffered() {
		return homeLoanOffered;
	}
	public void setHomeLoanOffered(String homeLoanOffered) {
		this.homeLoanOffered = homeLoanOffered;
	}
	public String getBestDeal() {
		return bestDeal;
	}
	public void setBestDeal(String bestDeal) {
		this.bestDeal = bestDeal;
	}
	public String getOverview() {
		return overview;
	}
	public void setOverview(String overview) {
		this.overview = overview;
	}
	public String getAmenities() {
		return amenities;
	}
	public void setAmenities(String amenities) {
		this.amenities = amenities;
	}
	public List<ProjectPriceForm> getProjectPricesForm() {
		return projectPricesForm;
	}
	public void setProjectPricesForm(List<ProjectPriceForm> projectPricesForm) {
		this.projectPricesForm = projectPricesForm;
	}
	public Set<SalesRegisterForm> getSalesRegistersForm() {
		return salesRegistersForm;
	}
	public void setSalesRegistersForm(Set<SalesRegisterForm> salesRegistersForm) {
		this.salesRegistersForm = salesRegistersForm;
	}
	public int compareTo(ProjectDetailsForm pdf) {
		if(this.bedRooms == pdf.bedRooms)
			return 0;
		else
			return this.bedRooms > pdf.bedRooms ? 1 : -1;

	}
	
	
	
			

}
