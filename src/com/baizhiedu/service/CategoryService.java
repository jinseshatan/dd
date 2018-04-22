package com.baizhiedu.service;

import java.util.List;

import com.baizhiedu.entity.Category;


public interface CategoryService {
	public List<Category> querySecondCategory();
	public Category queryCategoryById(Integer sc);
	public Category queryCategoryByPruductId(Integer productId);
}
