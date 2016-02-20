package com.bestnest.domain;

// Generated Dec 6, 2014 5:03:01 PM by Hibernate Tools 3.6.0

import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * PropertyType generated by hbm2java
 */
@Entity
@Table(name = "property_type", catalog = "ozuygqof_bestnest")
public class PropertyType implements java.io.Serializable {

	private String propertyTypeId;
	private Set<Project> projects = new HashSet<Project>(0);

	public PropertyType() {
	}

	public PropertyType(String propertyTypeId) {
		this.propertyTypeId = propertyTypeId;
	}

	public PropertyType(String propertyTypeId, Set<Project> projects) {
		this.propertyTypeId = propertyTypeId;
		this.projects = projects;
	}

	@Id
	@Column(name = "property_type_id", unique = true, nullable = false, length = 45)
	public String getPropertyTypeId() {
		return this.propertyTypeId;
	}

	public void setPropertyTypeId(String propertyTypeId) {
		this.propertyTypeId = propertyTypeId;
	}

	@OneToMany(fetch = FetchType.EAGER, mappedBy = "propertyType")
	public Set<Project> getProjects() {
		return this.projects;
	}

	public void setProjects(Set<Project> projects) {
		this.projects = projects;
	}

}