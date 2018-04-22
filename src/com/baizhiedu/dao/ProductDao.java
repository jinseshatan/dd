package com.baizhiedu.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.baizhiedu.entity.Page;
import com.baizhiedu.entity.Product;

public interface ProductDao {
	public List<Product> selectProduct(@Param("content") String content,@Param("end") Integer end);
	public List<Product> selectProductByCategoryId(@Param("sc") Integer sc,@Param("ssc") Integer ssc,@Param("page") Page page);
	public Integer selectCountProductByCategoryId(@Param("sc") Integer sc,@Param("ssc") Integer ssc);
	public Product selectProductById(@Param("productId") Integer productId);
}
