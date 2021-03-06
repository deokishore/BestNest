package com.bestnest.domain;

// Generated Dec 6, 2014 5:03:01 PM by Hibernate Tools 3.6.0

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * LeadInformation generated by hbm2java
 */
@Entity
@Table(name = "lead_information", catalog = "ozuygqof_bestnest")
public class LeadInformation implements java.io.Serializable {

	private int leadInformationId;
	private Integer userProfileId;
	private String name;
	private String email;
	private String mobile;
	private Date date;
	private String detail;
	private String feedback;
	private String status;
	private String tracking;

	public LeadInformation() {
	}

	public LeadInformation(int leadInformationId) {
		this.leadInformationId = leadInformationId;
	}

	public LeadInformation(int leadInformationId, Integer userProfileId,
			String name, String email, String mobile, Date date, String detail,
			String feedback, String status, String tracking) {
		this.leadInformationId = leadInformationId;
		this.userProfileId = userProfileId;
		this.name = name;
		this.email = email;
		this.mobile = mobile;
		this.date = date;
		this.detail = detail;
		this.feedback = feedback;
		this.status = status;
		this.tracking = tracking;
	}

	@Id
	@Column(name = "lead_information_id", unique = true, nullable = false)
	public int getLeadInformationId() {
		return this.leadInformationId;
	}

	public void setLeadInformationId(int leadInformationId) {
		this.leadInformationId = leadInformationId;
	}

	@Column(name = "user_profile_id")
	public Integer getUserProfileId() {
		return this.userProfileId;
	}

	public void setUserProfileId(Integer userProfileId) {
		this.userProfileId = userProfileId;
	}

	@Column(name = "name", length = 45)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "email", length = 45)
	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Column(name = "mobile", length = 45)
	public String getMobile() {
		return this.mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "date", length = 19)
	public Date getDate() {
		return this.date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	@Column(name = "detail", length = 200)
	public String getDetail() {
		return this.detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	@Column(name = "feedback", length = 2000)
	public String getFeedback() {
		return this.feedback;
	}

	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}

	@Column(name = "status", length = 45)
	public String getStatus() {
		return this.status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Column(name = "tracking", length = 1)
	public String getTracking() {
		return this.tracking;
	}

	public void setTracking(String tracking) {
		this.tracking = tracking;
	}

}
