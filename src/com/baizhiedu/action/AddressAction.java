package com.baizhiedu.action;

import java.util.ArrayList;
import java.util.List;

import com.baizhiedu.entity.Address;
import com.baizhiedu.entity.Order;
import com.baizhiedu.entity.User;
import com.baizhiedu.service.AddressService;
import com.baizhiedu.service.OrderService;
import com.baizhiedu.service.impl.AddressServiceImpl;
import com.baizhiedu.service.impl.OrderServiceImpl;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.util.ValueStack;

public class AddressAction extends ActionSupport {

	private Address address;
	private List<Address> addressList = new ArrayList<Address>();
	private Order order;
	
	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	public List<Address> getAddressList() {
		return addressList;
	}

	public void setAddressList(List<Address> addressList) {
		this.addressList = addressList;
	}

	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}
	public String addAddress(){
		OrderService orderService = new OrderServiceImpl();
		order = orderService.addOrder(address);
		return "success";
	}
	
	public String queryAddressById(){
		if(address != null){
			AddressService addressService = new AddressServiceImpl();
			address = addressService.queryAddressById(address.getAddressId());
		}
		return "success";
	}
	
	
	public String queryAddressByUserId(){
		AddressService addressService = new AddressServiceImpl();
		ValueStack vs = ActionContext.getContext().getValueStack();
		User user = (User) vs.findValue("#session.user");
		addressList = addressService.queryAddressByUserId(user.getUserId());
		return "success";
	}

	
	
}
