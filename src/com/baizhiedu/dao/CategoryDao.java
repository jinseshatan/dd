package com.baizhiedu.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.baizhiedu.entity.Category;

public interface CategoryDao {
	public List<Category> selectSecondCategory();
	public Category selectCategoryById(@Param("sc") Integer sc);
	public Category selectCategoryByProductId(@Param("productId") Integer productId);
}
