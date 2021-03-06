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
 * Company generated by hbm2java
 */
@Entity
@Table(name = "company", catalog = "ozuygqof_bestnest")
public class Company implements java.io.Serializable {

	private Integer companyId;
	private UserProfile userProfile;
	private String companyName;
	private String designation;
	private String imagePath;
	private Set<Project> projects = new HashSet<Project>(0);

	public Company() {
	}

	public Company(UserProfile userProfile, String companyName,
			String designation, String imagePath, Set<Project> projects) {
		this.userProfile = userProfile;
		this.companyName = companyName;
		this.designation = designation;
		this.imagePath = imagePath;
		this.projects = projects;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "company_id", unique = true, nullable = false)
	public Integer getCompanyId() {
		return this.companyId;
	}

	public void setCompanyId(Integer companyId) {
		this.companyId = companyId;
	}

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "user_profile_id")
	public UserProfile getUserProfile() {
		return this.userProfile;
	}

	public void setUserProfile(UserProfile userProfile) {
		this.userProfile = userProfile;
	}

	@Column(name = "company_name", length = 100)
	public String getCompanyName() {
		return this.companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	@Column(name = "designation", length = 45)
	public String getDesignation() {
		return this.designation;
	}

	public void setDesignation(String designation) {
		this.designation = designation;
	}

	@Column(name = "image_path", length = 100)
	public String getImagePath() {
		return this.imagePath;
	}

	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}

	@OneToMany(fetch = FetchType.EAGER, mappedBy = "company")
	public Set<Project> getProjects() {
		return this.projects;
	}

	public void setProjects(Set<Project> projects) {
		this.projects = projects;
	}

}
