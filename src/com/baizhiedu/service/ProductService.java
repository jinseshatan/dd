package com.baizhiedu.service;

import java.util.List;

import com.baizhiedu.entity.Page;
import com.baizhiedu.entity.Product;

public interface ProductService {
	public List<Product> queryProduct(String content,Integer end);
	public List<Product> queryProduct(Integer sc,Integer ssc,Page page);
	public Integer queryCountProductByCategoryId(Integer sc,Integer ssc);
	public Product queryProductById(Integer productId);
}
