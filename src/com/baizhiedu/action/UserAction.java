package com.baizhiedu.action;

import com.baizhiedu.entity.User;
import com.baizhiedu.service.UserService;
import com.baizhiedu.service.impl.UserServiceImpl;
import com.baizhiedu.util.ModiCode;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.util.ValueStack;

public class UserAction extends ActionSupport {
	
	private User user;
	private String activationCode;
	private String number;
	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getActivationCode() {
		return activationCode;
	}

	public void setActivationCode(String activationCode) {
		this.activationCode = activationCode;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}
	
	public String register(){
		ValueStack vs = ActionContext.getContext().getValueStack();
		String validate = (String) vs.findValue("#session.validate");
		if(number.equals(validate)){
			UserService userService = new UserServiceImpl();
			String pwd = user.getUserPassword();
			int i = userService.addUser(user);
			if(i == 0){
				throw new RuntimeException("注册失败！");
			} else {
				user = userService.queryUser(user.getUserEmail(), pwd);
				vs.setValue("#session.user", user);
				return "success";
			}
		} else {
			throw new RuntimeException("验证码错误！");
		}
	}
	
	public String verify(){
		String activationCode = ModiCode.getRandomSalt();
		activationCode = ModiCode.encryption(activationCode);
		ValueStack vs = ActionContext.getContext().getValueStack();
		vs.setValue("#session.activationCode", activationCode);
		return "success";
	}
	
	public String activation(){
		ValueStack vs = ActionContext.getContext().getValueStack();
		String code = (String) vs.findValue("#session.activationCode");
		if(activationCode.equals(code)){
			user = (User) vs.findValue("#session.user");
			user.setUserStatus(true);
			UserService userService = new UserServiceImpl();
			int i = userService.modifyUser(user);
			if(i == 0){
				throw new RuntimeException("激活失败！");
			} else {
				Boolean b = (Boolean) vs.findValue("#session.coerceLogin");
				if(b == null){
					return "success";
				} else {
					return "toAddress";
				}
			}
		} else {
			throw new RuntimeException("激活失败！");
		}
	}
	
	public String coerceLogin(){
		ValueStack vs = ActionContext.getContext().getValueStack();
		user = (User) vs.findValue("#session.user");
		if(user == null){
			vs.setValue("#session.coerceLogin", true);
			return "toLogin";
		} else {
			if(user.getUserStatus()){
				return "success";
			} else {
				return "toVerify";
			}
		}
	}
	
	public String login(){
		UserService userService = new UserServiceImpl();
		user = userService.queryUser(user.getUserEmail(), user.getUserPassword());
		if(user != null){
			ValueStack vs = ActionContext.getContext().getValueStack();
			vs.setValue("#session.user", user);
			Boolean b = (Boolean) vs.findValue("#session.coerceLogin");
			if(b == null){
				return "success";
			} else {
				if(user.getUserStatus()){
					return "toAddress";
				} else {
					return "toVerify";
				}
			}
		}  else {
			throw new RuntimeException("登陆失败！");
		}
	}

	
	
}
