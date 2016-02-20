package com.bestnest.portal.web.form;

import java.math.BigDecimal;
import java.util.Arrays;
import java.util.List;

import com.bestnest.util.Constant;

public class SalesRegisterForm {

	private int salesRegisterId;
	private ClientInformationForm clientInformationForm;
	private UserProfileForm userProfileByUserProfileIdForm;
	private ProjectDetailsForm projectDetailsForm;
	private UserProfileForm userProfileByAssociatesRmIdForm;
	private UserProfileForm userProfileByMentorCreditNoteIdForm;
	private UserProfileForm userProfileByTcReRpIdForm;
	private String paymentPlan;
	private String unitTypeNoTower;
	private BigDecimal companyRatePerSqFtAfterDiscount;
	private BigDecimal actualRatePerSqFt;
	private BigDecimal actualBasicPrice;
	private String channelPartner;
	private BigDecimal tcReRpFee;
	private BigDecimal associatesRmFee;
	private BigDecimal mentorCreditNoteFee;
	private BigDecimal commssionSlabsFromCompanyPrcnt;
	private BigDecimal commssionSlabsFromCompany;
	private BigDecimal otherBenifitFromCompany;
	private BigDecimal discountGivenFromCommission;
	private BigDecimal discountGivenFromOtherBenefits;
	private BigDecimal commissionToBestnest;
	private BigDecimal otherBenefitsToBestnest;
	private BigDecimal netCommissionToBestnest;
	private BigDecimal companyBaicPriceAftDiscount;
	
	private String dateDay;
	private String dateMonth;
	private String dateYear;
	
	private Integer companyId;
	private Integer projectId;
	private Integer projectDetailsId;
	
	
	
	private List<String> dateDayList = Arrays.asList(Constant.dateArray);
	private List<String> monthList = Arrays.asList(Constant.monthArray);
	private List<String> yearList = Constant.getYearList();
	
	public int getSalesRegisterId() {
		return salesRegisterId;
	}
	public void setSalesRegisterId(int salesRegisterId) {
		this.salesRegisterId = salesRegisterId;
	}
	public ClientInformationForm getClientInformationForm() {
		return clientInformationForm;
	}
	public void setClientInformationForm(ClientInformationForm clientInformationForm) {
		this.clientInformationForm = clientInformationForm;
	}
	public UserProfileForm getUserProfileByUserProfileIdForm() {
		return userProfileByUserProfileIdForm;
	}
	public void setUserProfileByUserProfileIdForm(
			UserProfileForm userProfileByUserProfileIdForm) {
		this.userProfileByUserProfileIdForm = userProfileByUserProfileIdForm;
	}
	public ProjectDetailsForm getProjectDetailsForm() {
		return projectDetailsForm;
	}
	public void setProjectDetailsForm(ProjectDetailsForm projectDetailsForm) {
		this.projectDetailsForm = projectDetailsForm;
	}
	public UserProfileForm getUserProfileByAssociatesRmIdForm() {
		return userProfileByAssociatesRmIdForm;
	}
	public void setUserProfileByAssociatesRmIdForm(
			UserProfileForm userProfileByAssociatesRmIdForm) {
		this.userProfileByAssociatesRmIdForm = userProfileByAssociatesRmIdForm;
	}
	public UserProfileForm getUserProfileByMentorCreditNoteIdForm() {
		return userProfileByMentorCreditNoteIdForm;
	}
	public void setUserProfileByMentorCreditNoteIdForm(
			UserProfileForm userProfileByMentorCreditNoteIdForm) {
		this.userProfileByMentorCreditNoteIdForm = userProfileByMentorCreditNoteIdForm;
	}
	public UserProfileForm getUserProfileByTcReRpIdForm() {
		return userProfileByTcReRpIdForm;
	}
	public void setUserProfileByTcReRpIdForm(
			UserProfileForm userProfileByTcReRpIdForm) {
		this.userProfileByTcReRpIdForm = userProfileByTcReRpIdForm;
	}
	public String getPaymentPlan() {
		return paymentPlan;
	}
	public void setPaymentPlan(String paymentPlan) {
		this.paymentPlan = paymentPlan;
	}
	public String getUnitTypeNoTower() {
		return unitTypeNoTower;
	}
	public void setUnitTypeNoTower(String unitTypeNoTower) {
		this.unitTypeNoTower = unitTypeNoTower;
	}
	public BigDecimal getCompanyRatePerSqFtAfterDiscount() {
		return companyRatePerSqFtAfterDiscount;
	}
	public void setCompanyRatePerSqFtAfterDiscount(
			BigDecimal companyRatePerSqFtAfterDiscount) {
		this.companyRatePerSqFtAfterDiscount = companyRatePerSqFtAfterDiscount;
	}
	public BigDecimal getActualRatePerSqFt() {
		return actualRatePerSqFt;
	}
	public void setActualRatePerSqFt(BigDecimal actualRatePerSqFt) {
		this.actualRatePerSqFt = actualRatePerSqFt;
	}
	public String getChannelPartner() {
		return channelPartner;
	}
	public void setChannelPartner(String channelPartner) {
		this.channelPartner = channelPartner;
	}
	public BigDecimal getTcReRpFee() {
		return tcReRpFee;
	}
	public void setTcReRpFee(BigDecimal tcReRpFee) {
		this.tcReRpFee = tcReRpFee;
	}
	public BigDecimal getAssociatesRmFee() {
		return associatesRmFee;
	}
	public void setAssociatesRmFee(BigDecimal associatesRmFee) {
		this.associatesRmFee = associatesRmFee;
	}
	public BigDecimal getMentorCreditNoteFee() {
		return mentorCreditNoteFee;
	}
	public void setMentorCreditNoteFee(BigDecimal mentorCreditNoteFee) {
		this.mentorCreditNoteFee = mentorCreditNoteFee;
	}
	public BigDecimal getCommssionSlabsFromCompanyPrcnt() {
		return commssionSlabsFromCompanyPrcnt;
	}
	public void setCommssionSlabsFromCompanyPrcnt(
			BigDecimal commssionSlabsFromCompanyPrcnt) {
		this.commssionSlabsFromCompanyPrcnt = commssionSlabsFromCompanyPrcnt;
	}
	public BigDecimal getCommssionSlabsFromCompany() {
		return commssionSlabsFromCompany;
	}
	public void setCommssionSlabsFromCompany(BigDecimal commssionSlabsFromCompany) {
		this.commssionSlabsFromCompany = commssionSlabsFromCompany;
	}
	public BigDecimal getOtherBenifitFromCompany() {
		return otherBenifitFromCompany;
	}
	public void setOtherBenifitFromCompany(BigDecimal otherBenifitFromCompany) {
		this.otherBenifitFromCompany = otherBenifitFromCompany;
	}
	public BigDecimal getDiscountGivenFromCommission() {
		return discountGivenFromCommission;
	}
	public void setDiscountGivenFromCommission(
			BigDecimal discountGivenFromCommission) {
		this.discountGivenFromCommission = discountGivenFromCommission;
	}
	public BigDecimal getDiscountGivenFromOtherBenefits() {
		return discountGivenFromOtherBenefits;
	}
	public void setDiscountGivenFromOtherBenefits(
			BigDecimal discountGivenFromOtherBenefits) {
		this.discountGivenFromOtherBenefits = discountGivenFromOtherBenefits;
	}
	public BigDecimal getCommissionToBestnest() {
		return commissionToBestnest;
	}
	public void setCommissionToBestnest(BigDecimal commissionToBestnest) {
		this.commissionToBestnest = commissionToBestnest;
	}
	public BigDecimal getOtherBenefitsToBestnest() {
		return otherBenefitsToBestnest;
	}
	public void setOtherBenefitsToBestnest(BigDecimal otherBenefitsToBestnest) {
		this.otherBenefitsToBestnest = otherBenefitsToBestnest;
	}
	public BigDecimal getNetCommissionToBestnest() {
		return netCommissionToBestnest;
	}
	public void setNetCommissionToBestnest(BigDecimal netCommissionToBestnest) {
		this.netCommissionToBestnest = netCommissionToBestnest;
	}
	public String getDateDay() {
		return dateDay;
	}
	public void setDateDay(String dateDay) {
		this.dateDay = dateDay;
	}
	public String getDateMonth() {
		return dateMonth;
	}
	public void setDateMonth(String dateMonth) {
		this.dateMonth = dateMonth;
	}
	public String getDateYear() {
		return dateYear;
	}
	public void setDateYear(String dateYear) {
		this.dateYear = dateYear;
	}
	public List<String> getDateDayList() {
		return dateDayList;
	}
	public void setDateDayList(List<String> dateDayList) {
		this.dateDayList = dateDayList;
	}
	public List<String> getMonthList() {
		return monthList;
	}
	public void setMonthList(List<String> monthList) {
		this.monthList = monthList;
	}
	public List<String> getYearList() {
		return yearList;
	}
	public void setYearList(List<String> yearList) {
		this.yearList = yearList;
	}
	public Integer getCompanyId() {
		return companyId;
	}
	public void setCompanyId(Integer companyId) {
		this.companyId = companyId;
	}
	public Integer getProjectId() {
		return projectId;
	}
	public void setProjectId(Integer projectId) {
		this.projectId = projectId;
	}
	public Integer getProjectDetailsId() {
		return projectDetailsId;
	}
	public void setProjectDetailsId(Integer projectDetailsId) {
		this.projectDetailsId = projectDetailsId;
	}
	public BigDecimal getActualBasicPrice() {
		return actualBasicPrice;
	}
	public void setActualBasicPrice(BigDecimal actualBasicPrice) {
		this.actualBasicPrice = actualBasicPrice;
	}
	public BigDecimal getCompanyBaicPriceAftDiscount() {
		return companyBaicPriceAftDiscount;
	}
	public void setCompanyBaicPriceAftDiscount(
			BigDecimal companyBaicPriceAftDiscount) {
		this.companyBaicPriceAftDiscount = companyBaicPriceAftDiscount;
	}
	
	
}
