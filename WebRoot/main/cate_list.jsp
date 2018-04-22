<%@page contentType="text/html;charset=utf-8" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<h2>分类浏览</h2>

<ul>
	<li>
		<div>
			<div class="second_fenlei">
				<s:if test="ssc == null">
					<a href="book_list.jsp?sc=${sc }"><span style="color:red;"><strong>&middot;全部&nbsp;(${category.categoryCount })</strong></span></a>
				</s:if>
				<s:if test="ssc != null">
					<a href="book_list.jsp?sc=${sc }">&middot;全部&nbsp;(${category.categoryCount })</a>
				</s:if>
			</div>
		</div>
	</li>
	<s:iterator value="category.categoryList">
		<div class="clear"></div>

		<!--2级分类开始-->
		<li>
			<div>
				<div class="second_fenlei">&middot;</div>
				<div class="second_fenlei">
					<s:if test="categoryId == ssc">
						<span style="color:red;"><strong>${categoryName }&nbsp;(${categoryCount })</strong></span>
					</s:if>
					<s:if test="categoryId != ssc">
						<a href="book_list.jsp?sc=${sc }&ssc=${categoryId }">${categoryName }&nbsp;(${categoryCount })</a>
					</s:if>
				</div>
			</div>
		</li>
		<div class="clear"></div>
	</s:iterator>
	<!--2级分类结束-->

	<li>
		<div></div>
	</li>
</ul>
