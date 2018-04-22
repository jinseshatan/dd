package com.baizhiedu.entity;

import java.io.Serializable;
import java.util.List;

public class Category implements Serializable {

	private Integer categoryId;
	private String categoryName;
	private Integer categoryParentId;
	private Integer categoryCount;
	
	private List<Category> categoryList;

	public Category() {
		super();
	}

	public Category(Integer categoryId, String categoryName,
			Integer categoryParentId, Integer categoryCount,
			List<Category> categoryList) {
		super();
		this.categoryId = categoryId;
		this.categoryName = categoryName;
		this.categoryParentId = categoryParentId;
		this.categoryCount = categoryCount;
		this.categoryList = categoryList;
	}

	public Integer getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(Integer categoryId) {
		this.categoryId = categoryId;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public Integer getCategoryParentId() {
		return categoryParentId;
	}

	public void setCategoryParentId(Integer categoryParentId) {
		this.categoryParentId = categoryParentId;
	}

	public Integer getCategoryCount() {
		return categoryCount;
	}

	public void setCategoryCount(Integer categoryCount) {
		this.categoryCount = categoryCount;
	}

	public List<Category> getCategoryList() {
		return categoryList;
	}

	public void setCategoryList(List<Category> categoryList) {
		this.categoryList = categoryList;
	}

	@Override
	public String toString() {
		return "Category [categoryId=" + categoryId + ", categoryName="
				+ categoryName + ", categoryParentId=" + categoryParentId
				+ ", categoryCount=" + categoryCount + ", categoryList="
				+ categoryList + "]";
	}

}
