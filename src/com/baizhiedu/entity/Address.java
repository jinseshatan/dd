package com.baizhiedu.entity;

import java.io.Serializable;

public class Address implements Serializable {

	private Integer addressId;
	private Integer userId;
	private String addressDetail;
	private Integer addressZipcode;
	private String addressPhone;
	private String addressMobile;
	private String addressName;
	
	public Address() {
		super();
	}

	public Address(Integer addressId, Integer userId, String addressDetail,
			Integer addressZipcode, String addressPhone, String addressMobile,
			String addressName) {
		super();
		this.addressId = addressId;
		this.userId = userId;
		this.addressDetail = addressDetail;
		this.addressZipcode = addressZipcode;
		this.addressPhone = addressPhone;
		this.addressMobile = addressMobile;
		this.addressName = addressName;
	}

	public Integer getAddressId() {
		return addressId;
	}

	public void setAddressId(Integer addressId) {
		this.addressId = addressId;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getAddressDetail() {
		return addressDetail;
	}

	public void setAddressDetail(String addressDetail) {
		this.addressDetail = addressDetail;
	}

	public Integer getAddressZipcode() {
		return addressZipcode;
	}

	public void setAddressZipcode(Integer addressZipcode) {
		this.addressZipcode = addressZipcode;
	}

	public String getAddressPhone() {
		return addressPhone;
	}

	public void setAddressPhone(String addressPhone) {
		this.addressPhone = addressPhone;
	}

	public String getAddressMobile() {
		return addressMobile;
	}

	public void setAddressMobile(String addressMobile) {
		this.addressMobile = addressMobile;
	}

	public String getAddressName() {
		return addressName;
	}

	public void setAddressName(String addressName) {
		this.addressName = addressName;
	}

	@Override
	public String toString() {
		return "Address [addressId=" + addressId + ", userId=" + userId
				+ ", addressDetail=" + addressDetail + ", addressZipcode="
				+ addressZipcode + ", addressPhone=" + addressPhone
				+ ", addressMobile=" + addressMobile + ", addressName="
				+ addressName + "]";
	}

}
