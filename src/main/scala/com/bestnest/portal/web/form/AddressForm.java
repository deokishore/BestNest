package com.bestnest.portal.web.form;


public class AddressForm {

	private Integer addressId;
	private CityLocalityForm cityLocalityForm;
	private String pin;
	private String street;

	public Integer getAddressId() {
		return addressId;
	}

	public void setAddressId(Integer addressId) {
		this.addressId = addressId;
	}

	public CityLocalityForm getCityLocalityForm() {
		return cityLocalityForm;
	}

	public void setCityLocalityForm(CityLocalityForm cityLocalityForm) {
		this.cityLocalityForm = cityLocalityForm;
	}

	public String getPin() {
		return pin;
	}

	public void setPin(String pin) {
		this.pin = pin;
	}

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

}
