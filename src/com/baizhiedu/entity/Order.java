package com.baizhiedu.entity;

import java.io.Serializable;
import java.util.Date;

public class Order implements Serializable {

	private Integer orderId;
	private Date orderTime;
	private Boolean orderStatus;
	private Double orderTotalprice;
	private Integer addressId;
	private Integer userId;
	
	public Order() {
		super();
	}

	public Order(Integer orderId, Date orderTime, Boolean orderStatus,
			Double orderTotalprice, Integer addressId, Integer userId) {
		super();
		this.orderId = orderId;
		this.orderTime = orderTime;
		this.orderStatus = orderStatus;
		this.orderTotalprice = orderTotalprice;
		this.addressId = addressId;
		this.userId = userId;
	}

	public Integer getOrderId() {
		return orderId;
	}

	public void setOrderId(Integer orderId) {
		this.orderId = orderId;
	}

	public Date getOrderTime() {
		return orderTime;
	}

	public void setOrderTime(Date orderTime) {
		this.orderTime = orderTime;
	}

	public Boolean getOrderStatus() {
		return orderStatus;
	}

	public void setOrderStatus(Boolean orderStatus) {
		this.orderStatus = orderStatus;
	}

	public Double getOrderTotalprice() {
		return orderTotalprice;
	}

	public void setOrderTotalprice(Double orderTotalprice) {
		this.orderTotalprice = orderTotalprice;
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

	@Override
	public String toString() {
		return "Order [orderId=" + orderId + ", orderTime=" + orderTime
				+ ", orderStatus=" + orderStatus + ", orderTotalprice="
				+ orderTotalprice + ", addressId=" + addressId + ", userId="
				+ userId + "]";
	}

}
