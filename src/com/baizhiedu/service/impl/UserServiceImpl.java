package com.baizhiedu.service.impl;

import com.baizhiedu.dao.UserDao;
import com.baizhiedu.entity.User;
import com.baizhiedu.service.UserService;
import com.baizhiedu.util.ModiCode;
import com.baizhiedu.util.MyBatisUtils;

public class UserServiceImpl implements UserService {

	@Override
	public int addUser(User user) {
		int i = 0;
		try {
			UserDao userDao = MyBatisUtils.getMapper(UserDao.class);
			User u = userDao.selectUser(user.getUserEmail());
			if(u != null){
				throw new RuntimeException("用户已存在");
			} else {
				user.setUserSalt(ModiCode.getRandomSalt());
				String password = ModiCode.encryption(user.getUserPassword()+user.getUserSalt());
				user.setUserPassword(password);
				i = userDao.insertUser(user);
				MyBatisUtils.commit();
			}
		} catch (Exception e) {
			MyBatisUtils.rollback();
		}
		return i;
	}

	@Override
	public User queryUser(String userEmail, String userPassword) {
		User user = null;
		try {
			UserDao userDao = MyBatisUtils.getMapper(UserDao.class);
			User u = userDao.selectUser(userEmail);
			if(u != null){
				String salt = u.getUserSalt();
				String password = ModiCode.encryption(userPassword+salt);
				if(u.getUserPassword().equals(password)){
					user = u;
				}
			}
			MyBatisUtils.commit();
		} catch (Exception e) {
			MyBatisUtils.rollback();
			e.printStackTrace();
		}
		return user;
	}

	@Override
	public int modifyUser(User user) {
		int i = 0;
		try {
			UserDao userDao = MyBatisUtils.getMapper(UserDao.class);
			i = userDao.updateUser(user);
			MyBatisUtils.commit();
		} catch (Exception e) {
			MyBatisUtils.rollback();
			e.printStackTrace();
		}
		return i;
	}

}
