package com.bestnest.domain;

// Generated Dec 6, 2014 5:03:01 PM by Hibernate Tools 3.6.0

import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * UserProfile generated by hbm2java
 */
@Entity
@Table(name = "user_profile", catalog = "ozuygqof_bestnest")
public class UserProfile implements java.io.Serializable {

	private Integer userProfileId;
	private Address address;
	private String title;
	private String firstName;
	private String lastName;
	private String gender;
	private String email;
	private String password;
	private String isInquire;
	private String briefDescription;
	private String mobileNumber;
	private String landLineNumber;
	private String roleId;
	private Set<SalesRegister> salesRegistersForUserProfileId = new HashSet<SalesRegister>(
			0);
	private Set<SalesRegister> salesRegistersForTcReRpId = new HashSet<SalesRegister>(
			0);
	private Set<SalesRegister> salesRegistersForAssociatesRmId = new HashSet<SalesRegister>(
			0);
	private Set<Project> projectsForUserProfileId = new HashSet<Project>(0);
	private Set<SalesRegister> salesRegistersForMentorCreditNoteId = new HashSet<SalesRegister>(
			0);
	private Set<Project> projectsForProjectContactId = new HashSet<Project>(0);
	private Set<Company> companies = new HashSet<Company>(0);

	public UserProfile() {
	}

	public UserProfile(Address address, String title, String firstName,
			String lastName, String gender, String email, String password,
			String isInquire, String briefDescription, String mobileNumber,
			String landLineNumber, String roleId,
			Set<SalesRegister> salesRegistersForUserProfileId,
			Set<SalesRegister> salesRegistersForTcReRpId,
			Set<SalesRegister> salesRegistersForAssociatesRmId,
			Set<Project> projectsForUserProfileId,
			Set<SalesRegister> salesRegistersForMentorCreditNoteId,
			Set<Project> projectsForProjectContactId, Set<Company> companies) {
		this.address = address;
		this.title = title;
		this.firstName = firstName;
		this.lastName = lastName;
		this.gender = gender;
		this.email = email;
		this.password = password;
		this.isInquire = isInquire;
		this.briefDescription = briefDescription;
		this.mobileNumber = mobileNumber;
		this.landLineNumber = landLineNumber;
		this.roleId = roleId;
		this.salesRegistersForUserProfileId = salesRegistersForUserProfileId;
		this.salesRegistersForTcReRpId = salesRegistersForTcReRpId;
		this.salesRegistersForAssociatesRmId = salesRegistersForAssociatesRmId;
		this.projectsForUserProfileId = projectsForUserProfileId;
		this.salesRegistersForMentorCreditNoteId = salesRegistersForMentorCreditNoteId;
		this.projectsForProjectContactId = projectsForProjectContactId;
		this.companies = companies;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "user_profile_id", unique = true, nullable = false)
	public Integer getUserProfileId() {
		return this.userProfileId;
	}

	public void setUserProfileId(Integer userProfileId) {
		this.userProfileId = userProfileId;
	}

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "address_id")
	public Address getAddress() {
		return this.address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	@Column(name = "title", length = 10)
	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	@Column(name = "first_name", length = 45)
	public String getFirstName() {
		return this.firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	@Column(name = "last_name", length = 45)
	public String getLastName() {
		return this.lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	@Column(name = "gender", length = 10)
	public String getGender() {
		return this.gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	@Column(name = "email", length = 45)
	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Column(name = "password", length = 45)
	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Column(name = "is_inquire", length = 5)
	public String getIsInquire() {
		return this.isInquire;
	}

	public void setIsInquire(String isInquire) {
		this.isInquire = isInquire;
	}

	@Column(name = "brief_description", length = 5000)
	public String getBriefDescription() {
		return this.briefDescription;
	}

	public void setBriefDescription(String briefDescription) {
		this.briefDescription = briefDescription;
	}

	@Column(name = "mobile_number", length = 20)
	public String getMobileNumber() {
		return this.mobileNumber;
	}

	public void setMobileNumber(String mobileNumber) {
		this.mobileNumber = mobileNumber;
	}

	@Column(name = "land_line_number", length = 20)
	public String getLandLineNumber() {
		return this.landLineNumber;
	}

	public void setLandLineNumber(String landLineNumber) {
		this.landLineNumber = landLineNumber;
	}

	@Column(name = "role_id", length = 20)
	public String getRoleId() {
		return this.roleId;
	}

	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}

	@OneToMany(fetch = FetchType.EAGER, mappedBy = "userProfileByUserProfileId")
	public Set<SalesRegister> getSalesRegistersForUserProfileId() {
		return this.salesRegistersForUserProfileId;
	}

	public void setSalesRegistersForUserProfileId(
			Set<SalesRegister> salesRegistersForUserProfileId) {
		this.salesRegistersForUserProfileId = salesRegistersForUserProfileId;
	}

	@OneToMany(fetch = FetchType.EAGER, mappedBy = "userProfileByTcReRpId")
	public Set<SalesRegister> getSalesRegistersForTcReRpId() {
		return this.salesRegistersForTcReRpId;
	}

	public void setSalesRegistersForTcReRpId(
			Set<SalesRegister> salesRegistersForTcReRpId) {
		this.salesRegistersForTcReRpId = salesRegistersForTcReRpId;
	}

	@OneToMany(fetch = FetchType.EAGER, mappedBy = "userProfileByAssociatesRmId")
	public Set<SalesRegister> getSalesRegistersForAssociatesRmId() {
		return this.salesRegistersForAssociatesRmId;
	}

	public void setSalesRegistersForAssociatesRmId(
			Set<SalesRegister> salesRegistersForAssociatesRmId) {
		this.salesRegistersForAssociatesRmId = salesRegistersForAssociatesRmId;
	}

	@OneToMany(fetch = FetchType.EAGER, mappedBy = "userProfileByUserProfileId")
	public Set<Project> getProjectsForUserProfileId() {
		return this.projectsForUserProfileId;
	}

	public void setProjectsForUserProfileId(
			Set<Project> projectsForUserProfileId) {
		this.projectsForUserProfileId = projectsForUserProfileId;
	}

	@OneToMany(fetch = FetchType.EAGER, mappedBy = "userProfileByMentorCreditNoteId")
	public Set<SalesRegister> getSalesRegistersForMentorCreditNoteId() {
		return this.salesRegistersForMentorCreditNoteId;
	}

	public void setSalesRegistersForMentorCreditNoteId(
			Set<SalesRegister> salesRegistersForMentorCreditNoteId) {
		this.salesRegistersForMentorCreditNoteId = salesRegistersForMentorCreditNoteId;
	}

	@OneToMany(fetch = FetchType.EAGER, mappedBy = "userProfileByProjectContactId")
	public Set<Project> getProjectsForProjectContactId() {
		return this.projectsForProjectContactId;
	}

	public void setProjectsForProjectContactId(
			Set<Project> projectsForProjectContactId) {
		this.projectsForProjectContactId = projectsForProjectContactId;
	}

	@OneToMany(fetch = FetchType.EAGER, mappedBy = "userProfile")
	public Set<Company> getCompanies() {
		return this.companies;
	}

	public void setCompanies(Set<Company> companies) {
		this.companies = companies;
	}

}