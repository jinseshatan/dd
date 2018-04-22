package com.baizhiedu.service;

import com.baizhiedu.entity.User;

public interface UserService {
	public int addUser(User user);
	public User queryUser(String userEmail,String userPassword);
	public int modifyUser(User user);

}
