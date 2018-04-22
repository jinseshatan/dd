package com.baizhiedu.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.baizhiedu.entity.Page;
import com.baizhiedu.entity.Product;
import com.baizhiedu.service.ProductService;
import com.baizhiedu.service.impl.ProductServiceImpl;
import com.opensymphony.xwork2.ActionSupport;

public class ProductAction extends ActionSupport {

	private List<Product> productList = new ArrayList<Product>();
	private Product product = new Product();
	private Integer sc;
	private Integer ssc;
	private Page page = new Page();
	
	public List<Product> getProductList() {
		return productList;
	}

	public void setProductList(List<Product> productList) {
		this.productList = productList;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
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

	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}
	// 热销
	public String queryHot(){
		ProductService productService = new ProductServiceImpl();
		productList = productService.queryProduct("product_sales_volume desc",8);
		return "success";
	}
	//最新
	public String queryNew(){
		ProductService productService = new ProductServiceImpl();
		productList = productService.queryProduct("product_release_time desc",8);
		return "success";
	}
	//新书热销
	public String queryHotBoard(){
		ProductService productService = new ProductServiceImpl();
		productList = productService.queryProduct("product_sales_volume desc, product_release_time desc",8);
		return "success";
	}
	//编辑推荐
	public String queryRecommend(){
		ProductService productService = new ProductServiceImpl();
		productList = productService.queryProduct("product_pv",2);
		return "success";
	}
	//查商品集合
	public String queryCategory(){
		ProductService productService = new ProductServiceImpl();
		int totalRecords = productService.queryCountProductByCategoryId(sc, ssc);
		page = new Page(page.getPageIndex(),totalRecords);
		productList = productService.queryProduct(sc,ssc,page);
		return "success";
	}
	//查单个商品
	public String queryProduct(){
		ProductService productService = new ProductServiceImpl();
		product = productService.queryProductById(product.getProductId());
		return "success";
	}


}
