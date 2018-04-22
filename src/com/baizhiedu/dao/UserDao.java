package com.baizhiedu.dao;

import org.apache.ibatis.annotations.Param;

import com.baizhiedu.entity.User;

public interface UserDao {
	public int insertUser(User user);
	public User selectUser(@Param("userEmail") String userEmail);
	public int updateUser(User user);
}
