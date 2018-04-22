package com.baizhiedu.service.impl;

import java.util.List;

import com.baizhiedu.dao.CategoryDao;
import com.baizhiedu.entity.Category;
import com.baizhiedu.service.CategoryService;
import com.baizhiedu.util.MyBatisUtils;

public class CategoryServiceImpl implements CategoryService {

	@Override
	public List<Category> querySecondCategory() {
		List<Category> list = null;
		try{
			CategoryDao categoryDao = MyBatisUtils.getMapper(CategoryDao.class);
			list = categoryDao.selectSecondCategory();
			MyBatisUtils.commit();
		} catch (Exception e) {
			MyBatisUtils.rollback();
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public Category queryCategoryById(Integer sc) {
		Category category = null;
		try{
			CategoryDao categoryDao = MyBatisUtils.getMapper(CategoryDao.class);
			category = categoryDao.selectCategoryById(sc);
			MyBatisUtils.commit();
		} catch (Exception e) {
			MyBatisUtils.rollback();
			e.printStackTrace();
		}
		return category;
	}

	@Override
	public Category queryCategoryByPruductId(Integer productId) {
		Category category = null;
		try{
			CategoryDao categoryDao = MyBatisUtils.getMapper(CategoryDao.class);
			category = categoryDao.selectCategoryByProductId(productId);
			MyBatisUtils.commit();
		} catch (Exception e) {
			MyBatisUtils.rollback();
			e.printStackTrace();
		}
		return category;
	}

}
