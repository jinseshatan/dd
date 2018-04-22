package com.baizhiedu.action;

import java.util.ArrayList;
import java.util.List;

import com.baizhiedu.entity.Category;
import com.baizhiedu.entity.Product;
import com.baizhiedu.service.CategoryService;
import com.baizhiedu.service.impl.CategoryServiceImpl;
import com.opensymphony.xwork2.ActionSupport;

public class CategoryAction extends ActionSupport {

	private List<Category> secondCategoryList = new ArrayList<Category>();	//二级分类列表
	private Category category = new Category();
	private Integer sc;	
	private Integer ssc;
	private Product product;
	
	public List<Category> getSecondCategoryList() {
		return secondCategoryList;
	}

	public void setSecondCategoryList(List<Category> secondCategoryList) {
		this.secondCategoryList = secondCategoryList;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public Integer getSc() {
		return sc;
	}

	public void setSc(Integer sc) {
		this.sc = sc;
	}

	public Integer getSsc() {
		return ssc;
	}

	public void setSsc(Integer ssc) {
		this.ssc = ssc;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}
	
	public String queryCategory(){
		CategoryService categoryService = new CategoryServiceImpl();
		secondCategoryList = categoryService.querySecondCategory();
		return "success";
	}
	public String queryCategoryById(){
		CategoryService categoryService = new CategoryServiceImpl();
		category = categoryService.queryCategoryById(sc);
		return "success";
	}
	
	public String queryCategoryBySiteId(){
		CategoryService categoryService = new CategoryServiceImpl();
		category = categoryService.queryCategoryById(sc);
		return "success";
	}
	public String queryCategoryByProductId(){
		CategoryService categoryService = new CategoryServiceImpl();
		category = categoryService.queryCategoryByPruductId(product.getProductId());
		return "success";
	}


	

}
