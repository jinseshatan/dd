package com.baizhiedu.util;

import java.util.Random;

import org.apache.commons.codec.digest.DigestUtils;

public class ModiCode {

	public static String getRandomSalt(){
		String s = "1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
		char[] c = new char[6];
		Random random = new Random();
		for (int i = 0; i < c.length; i++) {
			c[i] = s.charAt(random.nextInt(s.length()));
		}
		return new String(c);
	}
	

	public static String encryption(String s){
		return DigestUtils.md5Hex(s);
	}
	
}