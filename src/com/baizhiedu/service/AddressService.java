package com.baizhiedu.service;

import java.util.List;

import com.baizhiedu.entity.Address;

public interface AddressService {
	public int addAddress(Address address);
	public List<Address> queryAddressByUserId(Integer userId);
	public Address queryAddressById(Integer addressId);
}
