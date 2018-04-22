package com.baizhiedu.service.impl;

import java.util.List;

import com.baizhiedu.dao.AddressDao;
import com.baizhiedu.entity.Address;
import com.baizhiedu.service.AddressService;
import com.baizhiedu.util.MyBatisUtils;

public class AddressServiceImpl implements AddressService {

	@Override
	public int addAddress(Address address) {
		int i = 0;
		try {
			AddressDao addressDao = MyBatisUtils.getMapper(AddressDao.class);
			i = addressDao.insertAddress(address);
			MyBatisUtils.commit();
		} catch (Exception e) {
			MyBatisUtils.rollback();
			e.printStackTrace();
		}
		return i;
	}

	@Override
	public List<Address> queryAddressByUserId(Integer userId) {
		List<Address> addressList = null;
		try {
			AddressDao addressDao = MyBatisUtils.getMapper(AddressDao.class);
			addressList = addressDao.selectAddressByUserId(userId);
			MyBatisUtils.commit();
		} catch (Exception e) {
			MyBatisUtils.rollback();
			e.printStackTrace();
		}
		return addressList;
	}

	@Override
	public Address queryAddressById(Integer addressId) {
		Address address = null;
		try {
			AddressDao addressDao = MyBatisUtils.getMapper(AddressDao.class);
			address = addressDao.selectAddressById(addressId);
			MyBatisUtils.commit();
		} catch (Exception e) {
			MyBatisUtils.rollback();
			e.printStackTrace();
		}
		return address;
	}

}
