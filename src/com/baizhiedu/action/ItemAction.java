package com.baizhiedu.action;

import java.util.HashMap;
import java.util.Map;

import com.baizhiedu.entity.Item;
import com.baizhiedu.entity.Product;
import com.baizhiedu.service.ProductService;
import com.baizhiedu.service.impl.ProductServiceImpl;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.util.ValueStack;

public class ItemAction extends ActionSupport {

	private Product product;
	private Map<Integer,Item> itemMap;
	private Map<Integer,Item> recoveryMap;
	private Integer itemCount;
	
	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public Map<Integer, Item> getItemMap() {
		return itemMap;
	}

	public void setItemMap(Map<Integer, Item> itemMap) {
		this.itemMap = itemMap;
	}

	public Integer getItemCount() {
		return itemCount;
	}

	public void setItemCount(Integer itemCount) {
		this.itemCount = itemCount;
	}
	
	private ValueStack vs = ActionContext.getContext().getValueStack();
	
	
	public String addCart(){
		ProductService productService = new ProductServiceImpl();
		product = productService.queryProductById(product.getProductId());	
		itemMap = (Map<Integer, Item>) vs.findValue("#session.itemMap");	
		if(itemMap != null){	
			Item item = itemMap.get(product.getProductId());
			if(item == null){	
				
				itemMap.put(product.getProductId(), new Item(null,product.getProductId(),1,product.getProductDprice(),null,product));
			} else {	
				
				itemMap.put(product.getProductId(),new Item(null,product.getProductId(),item.getItemCount()+1,product.getProductDprice()*(item.getItemCount()+1),null,product));
			}
		} else {
			itemMap =  new HashMap<Integer, Item>();
			
			itemMap.put(product.getProductId(),new Item(null,product.getProductId(),1,product.getProductDprice(),null,product));
			vs.setValue("#session.itemMap", itemMap);
		}
		return "success";
	}
	//变更
	public String modify(){
		itemMap = (Map<Integer, Item>) vs.findValue("#session.itemMap");
		Item item = itemMap.get(product.getProductId());
		item.setItemCount(itemCount);
		item.setItemPrice(item.getProduct().getProductDprice()*itemCount);
		itemMap.put(product.getProductId(), item);
		return "success";
	}

	//删除
	public String remove(){
		itemMap = (Map<Integer, Item>) vs.findValue("#session.itemMap");
		Item item = itemMap.get(product.getProductId());
		itemMap.remove(product.getProductId());
		recoveryMap = (Map<Integer, Item>) vs.findValue("#session.recoveryMap");
		if(recoveryMap == null){
			recoveryMap = new HashMap<Integer,Item>();
			recoveryMap.put(product.getProductId(), item);
			vs.setValue("#session.recoveryMap", recoveryMap);
		} else {
			recoveryMap.put(product.getProductId(), item);
		}
		return "success";
	}
	//恢复
	public String recovery(){
		itemMap = (Map<Integer, Item>) vs.findValue("#session.itemMap");
		recoveryMap = (Map<Integer, Item>) vs.findValue("#session.recoveryMap");
		Item item = recoveryMap.get(product.getProductId());
		recoveryMap.remove(product.getProductId());
		itemMap.put(product.getProductId(), item);
		return "success";
	}
	

	
	
}
