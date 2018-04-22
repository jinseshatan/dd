package com.baizhiedu.service.impl;

import java.util.List;

import com.baizhiedu.dao.ProductDao;
import com.baizhiedu.entity.Page;
import com.baizhiedu.entity.Product;
import com.baizhiedu.service.ProductService;
import com.baizhiedu.util.MyBatisUtils;

public class ProductServiceImpl implements ProductService {

	@Override
	public List<Product> queryProduct(String content,Integer end) {
		List<Product> productList = null;
		try{
			ProductDao productDao = MyBatisUtils.getMapper(ProductDao.class);
			productList = productDao.selectProduct(content,end);
			MyBatisUtils.commit();
		} catch (Exception e) {
			MyBatisUtils.rollback();
			e.printStackTrace();
		}
		return productList;
	}

	@Override
	public List<Product> queryProduct(Integer sc,Integer ssc,Page page) {
		List<Product> productList = null;
		try{
			ProductDao productDao = MyBatisUtils.getMapper(ProductDao.class);
			productList = productDao.selectProductByCategoryId(sc,ssc,page);
			MyBatisUtils.commit();
		} catch (Exception e) {
			MyBatisUtils.rollback();
			e.printStackTrace();
		}
		return productList;
	}

	@Override
	public Integer queryCountProductByCategoryId(Integer sc, Integer ssc) {
		int i = 0;
		try{
			ProductDao productDao = MyBatisUtils.getMapper(ProductDao.class);
			i = productDao.selectCountProductByCategoryId(sc, ssc);
			MyBatisUtils.commit();
		} catch (Exception e) {
			MyBatisUtils.rollback();
			e.printStackTrace();
		}
		return i;
	}

	@Override
	public Product queryProductById(Integer productId) {
		Product product = null;
		try{
			ProductDao productDao = MyBatisUtils.getMapper(ProductDao.class);
			product = productDao.selectProductById(productId);
			MyBatisUtils.commit();
		} catch (Exception e) {
			MyBatisUtils.rollback();
			e.printStackTrace();
		}
		return product;
	}

}
