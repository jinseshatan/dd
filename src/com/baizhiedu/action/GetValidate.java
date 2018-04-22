package com.baizhiedu.action;

import org.apache.struts2.ServletActionContext;

import com.baizhiedu.util.CreateValidateCode;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.util.ValueStack;

public class GetValidate implements Action {
	
	@Override
	public String execute() throws Exception {
		CreateValidateCode vCode = new CreateValidateCode(100, 30, 4, 0);
		ValueStack vs = ActionContext.getContext().getValueStack();
		vs.setValue("#session.validate", vCode.getCode());
		vCode.write(ServletActionContext.getResponse().getOutputStream());
		return null;
	}
}
