<%@page contentType="text/html;charset=utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<form name="ctl00" method="post" action="../order/order_ok.jsp" id="f">
	<input type="hidden" name="address.addressId"
		value="${address.addressId }" />
	<table class="tab_login">
		<tr>
			<td valign="top" class="w1">收件人姓名：</td>
			<td><input type="text" class="text_input"
				name="address.addressName" id="receiveName"
				value="${address.addressName }"
				<s:if test="address.addressId != -1 || address.addressId != null">readonly</s:if> />
				<div class="text_left" id="nameValidMsg">
					<p>请填写有效的收件人姓名</p>
				</div></td>
		</tr>
		<tr>
			<td valign="top" class="w1">收件人详细地址：</td>
			<td><input type="text" name="address.addressDetail"
				class="text_input" id="fullAddress"
				value="${address.addressDetail }"
				<s:if test="address.addressId != -1 || address.addressId != null">readonly</s:if> />
				<div class="text_left" id="addressValidMsg">
					<p>请填写有效的收件人的详细地址</p>
				</div></td>
		</tr>
		<tr>
			<td valign="top" class="w1">邮政编码：</td>
			<td><input type="text" class="text_input"
				name="address.addressZipcode" id="postalCode"
				value="${address.addressZipcode }"
				<s:if test="address.addressId != -1 || address.addressId != null">readonly</s:if> />
				<div class="text_left" id="codeValidMsg">
					<p>请填写有效的收件人的邮政编码</p>
				</div></td>
		</tr>
		<tr>
			<td valign="top" class="w1">电话：</td>
			<td><input type="text" class="text_input"
				name="address.addressPhone" id="phone"
				value="${address.addressPhone }"
				<s:if test="address.addressId != -1 || address.addressId != null">readonly</s:if> />
				<div class="text_left" id="phoneValidMsg">
					<p>请填写有效的收件人的电话</p>
				</div></td>
		</tr>
		<tr>
			<td valign="top" class="w1">手机：</td>
			<td><input type="text" class="text_input"
				name="address.addressMobile" id="mobile"
				value="${address.addressMobile }"
				<s:if test="address.addressId != -1 || address.addressId != null">readonly</s:if> />
				<div class="text_left" id="mobileValidMsg">
					<p>请填写有效的收件人的手机</p>
				</div></td>
		</tr>
	</table>

	<div class="login_in">
		<a href="order_info.jsp"><input id="btnClientRegister"
			class="button_1" name="submit" type="submit" value="取消" /></a> <input
			id="btnClientRegister" class="button_1" name="submit" type="submit"
			value="下一步" />
	</div>
</form>