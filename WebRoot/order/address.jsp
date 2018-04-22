<%@page contentType="text/html;charset=utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<p>
	选择地址： <select name="address.addressId" id="address">
		<option value="-1">填写新地址</option>
		<s:iterator value="addressList" var="adde">
			<s:if test="address.addressId == #adde.addressId">
				<option selected value="<s:property value='#adde.addressId' />"><s:property
						value="#adde.addressDetail" /></option>
			</s:if>
			<s:else>
				<option value="<s:property value='#adde.addressId' />"><s:property
						value="#adde.addressDetail" /></option>
			</s:else>
		</s:iterator>
	</select>
</p>
<br />