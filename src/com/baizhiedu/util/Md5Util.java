package com.baizhiedu.util;

import org.apache.commons.codec.digest.DigestUtils;

public class Md5Util {
	public static String  encryption(String password){
		String passwordmw = DigestUtils.md5Hex(password);
		return passwordmw;
	}
	public static boolean checkPassword(String password,String dbpassword){
		if(password==null) throw new RuntimeException();
		if(dbpassword==null) throw new RuntimeException();
		String passwordmw = encryption(password);
		if(dbpassword.equals(passwordmw)) return true;
		 return false;
	}
}
