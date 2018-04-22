package com.baizhiedu.entity;

import java.io.Serializable;

public class Item implements Serializable {

	private Integer itemId;	
	private Integer productId;
	private Integer itemCount;
	private Double itemPrice;
	private Integer orderId;
	private Product product;
	
	public Item() {
		super();
	}

	public Item(Integer itemId, Integer productId, Integer itemCount,
			Double itemPrice, Integer orderId, Product product) {
		super();
		this.itemId = itemId;
		this.productId = productId;
		this.itemCount = itemCount;
		this.itemPrice = itemPrice;
		this.orderId = orderId;
		this.product = product;
	}

	public Integer getItemId() {
		return itemId;
	}

	public void setItemId(Integer itemId) {
		this.itemId = itemId;
	}

	public Integer getProductId() {
		return productId;
	}

	public void setProductId(Integer productId) {
		this.productId = productId;
	}

	public Integer getItemCount() {
		return itemCount;
	}

	public void setItemCount(Integer itemCount) {
		this.itemCount = itemCount;
	}

	public Double getItemPrice() {
		return itemPrice;
	}

	public void setItemPrice(Double itemPrice) {
		this.itemPrice = itemPrice;
	}

	public Integer getOrderId() {
		return orderId;
	}

	public void setOrderId(Integer orderId) {
		this.orderId = orderId;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	@Override
	public String toString() {
		return "Item [itemId=" + itemId + ", productId=" + productId
				+ ", itemCount=" + itemCount + ", itemPrice=" + itemPrice
				+ ", orderId=" + orderId + ", product=" + product + "]";
	}

}
