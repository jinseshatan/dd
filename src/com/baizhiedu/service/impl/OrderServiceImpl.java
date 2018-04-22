package com.baizhiedu.service.impl;

import java.util.Map;
import java.util.Set;

import com.baizhiedu.dao.AddressDao;
import com.baizhiedu.dao.ItemDao;
import com.baizhiedu.dao.OrderDao;
import com.baizhiedu.entity.Address;
import com.baizhiedu.entity.Item;
import com.baizhiedu.entity.Order;
import com.baizhiedu.entity.User;
import com.baizhiedu.service.OrderService;
import com.baizhiedu.util.MyBatisUtils;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.util.ValueStack;

public class OrderServiceImpl implements OrderService {

	@Override
	public Order addOrder(Address address) {
		Order order = null;
		try {
			if(address.getAddressId() == null){
				ValueStack vs = ActionContext.getContext().getValueStack();
				User user = (User) vs.findValue("#session.user");
				AddressDao addressDao = MyBatisUtils.getMapper(AddressDao.class);
				address.setUserId(user.getUserId());
				addressDao.insertAddress(address);
				OrderDao orderDao = MyBatisUtils.getMapper(OrderDao.class);

				Map<Integer,Item> itemMap = (Map<Integer, Item>) vs.findValue("#session.itemMap");
				Set<Integer> productIds = itemMap.keySet();
				Double totalPrice = 0D;
				for (Integer productId : productIds) {
					Item item = itemMap.get(productId);
					totalPrice = totalPrice + item.getItemPrice();
				}
				
				order = new Order(null,null,null,totalPrice,address.getAddressId(),user.getUserId());
				orderDao.insertOrder(order);
				ItemDao itemDao = MyBatisUtils.getMapper(ItemDao.class);
				
				for (Integer productId : productIds) {
					Item item = itemMap.get(productId);
					item.setOrderId(order.getOrderId());
					itemDao.insertItem(item);
				}
				vs.setValue("#session.itemMap", null);
			} else {
				ValueStack vs = ActionContext.getContext().getValueStack();
				User user = (User) vs.findValue("#session.user");
				OrderDao orderDao = MyBatisUtils.getMapper(OrderDao.class);
		
				Map<Integer,Item> itemMap = (Map<Integer, Item>) vs.findValue("#session.itemMap");
				Set<Integer> productIds = itemMap.keySet();
				Double totalPrice = 0D;
				for (Integer productId : productIds) {
					Item item = itemMap.get(productId);
					totalPrice = totalPrice + item.getItemPrice();
				}
				
				order = new Order(null,null,null,totalPrice,address.getAddressId(),user.getUserId());
				orderDao.insertOrder(order);
				
				ItemDao itemDao = MyBatisUtils.getMapper(ItemDao.class);
				for (Integer productId : productIds) {
					Item item = itemMap.get(productId);
					item.setOrderId(order.getOrderId());
					itemDao.insertItem(item);
				}
				vs.setValue("#session.itemMap", null);
			}
			MyBatisUtils.commit();
		} catch (Exception e) {
			MyBatisUtils.rollback();
			e.printStackTrace();
		}
		return order;
	}

}
