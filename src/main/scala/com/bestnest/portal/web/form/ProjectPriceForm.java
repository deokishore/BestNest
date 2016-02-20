package com.bestnest.portal.web.form;

import java.math.BigDecimal;

import com.bestnest.domain.ProjectDetails;

public class ProjectPriceForm {
	
	private Integer projectPriceId;
	private ProjectDetails projectDetails;
	private String paymentPlan;
	private BigDecimal companyRate;
	private String companyDiscount;
	private String brokerDiscount;
	private String maxCustomerDiscountFromBrokerDiscount;
	private String companyOtherBenifit;
	private String companyOtherBenifit2;
	public Integer getProjectPriceId() {
		return projectPriceId;
	}
	public void setProjectPriceId(Integer projectPriceId) {
		this.projectPriceId = projectPriceId;
	}
	public ProjectDetails getProjectDetails() {
		return projectDetails;
	}
	public void setProjectDetails(ProjectDetails projectDetails) {
		this.projectDetails = projectDetails;
	}
	public String getPaymentPlan() {
		return paymentPlan;
	}
	public void setPaymentPlan(String paymentPlan) {
		this.paymentPlan = paymentPlan;
	}
	public BigDecimal getCompanyRate() {
		return companyRate;
	}
	public void setCompanyRate(BigDecimal companyRate) {
		this.companyRate = companyRate;
	}
	public String getCompanyDiscount() {
		return companyDiscount;
	}
	public void setCompanyDiscount(String companyDiscount) {
		this.companyDiscount = companyDiscount;
	}
	public String getBrokerDiscount() {
		return brokerDiscount;
	}
	public void setBrokerDiscount(String brokerDiscount) {
		this.brokerDiscount = brokerDiscount;
	}
	public String getMaxCustomerDiscountFromBrokerDiscount() {
		return maxCustomerDiscountFromBrokerDiscount;
	}
	public void setMaxCustomerDiscountFromBrokerDiscount(
			String maxCustomerDiscountFromBrokerDiscount) {
		this.maxCustomerDiscountFromBrokerDiscount = maxCustomerDiscountFromBrokerDiscount;
	}
	public String getCompanyOtherBenifit() {
		return companyOtherBenifit;
	}
	public void setCompanyOtherBenifit(String companyOtherBenifit) {
		this.companyOtherBenifit = companyOtherBenifit;
	}
	public String getCompanyOtherBenifit2() {
		return companyOtherBenifit2;
	}
	public void setCompanyOtherBenifit2(String companyOtherBenifit2) {
		this.companyOtherBenifit2 = companyOtherBenifit2;
	}
	
		
		
}
