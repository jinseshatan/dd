<%@page contentType="text/html;charset=utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<s:if test="ssc == null">
	<a href="book_list.jsp?sc=${sc }"><span style="color:red;"><strong>${category.categoryName }</strong></span></a>
</s:if>
<s:if test="ssc != null">
	<a href="book_list.jsp?sc=${sc }"><strong>${category.categoryName }</strong></a>
</s:if>
<s:iterator value="category.categoryList" var="c">
	<s:if test="#c.categoryId == ssc">
		<font style='color: #cc3300'><strong> &gt;&gt;
				${c.categoryName }</strong></font>
	</s:if>
</s:iterator>