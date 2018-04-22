package com.baizhiedu.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.baizhiedu.entity.Address;

public interface AddressDao {
	public int insertAddress(Address address);
	public List<Address> selectAddressByUserId(@Param("userId") Integer userId);
	public Address selectAddressById(@Param("addressId") Integer addressId);
	
}
