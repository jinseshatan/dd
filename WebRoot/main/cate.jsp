<%@page contentType="text/html;charset=utf-8" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<a href="main.jsp">图书</a>
&gt;&gt;
<a href="book_list.jsp?sc=${category.categoryId }">${category.categoryName }</a>
&gt;&gt;
<s:iterator value="category.categoryList" var="c">
	<a href="book_list.jsp?sc=${category.categoryId }&ssc=${c.categoryId}">${c.categoryName }</a>
</s:iterator>