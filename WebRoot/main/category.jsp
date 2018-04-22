<%@page contentType="text/html;charset=utf-8" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<div class="book_l_border1" id="__FenLeiLiuLan">
	<div class="book_sort_tushu">
		<h2>分类浏览</h2>
		<!--1级分类开始-->
		<s:iterator value="secondCategoryList" var="c1">
			<s:if test="#c1.categoryName != null">
				<div class="bg_old" onmouseover="this.className = 'bg_white';"
					onmouseout="this.className = 'bg_old';">
					<h3>
						[<a href="book_list.jsp?sc=${c1.categoryId }">${c1.categoryName }</a>]
					</h3>
					<ul class="ul_left_list">
						<!--2级分类开始-->
						<s:iterator value="#c1.categoryList" var="c2">
							<li><a
								href="book_list.jsp?sc=${c1.categoryId }&ssc=${c2.categoryId }">${c2.categoryName }</a></li>
						</s:iterator>
						<!--2级分类结束-->
					</ul>
					<div class="empty_left"></div>
				</div>
				<div class="more2"></div>
			</s:if>
		</s:iterator>
		<!--1级分类结束-->
		<div class="bg_old">
			<h3>&nbsp;</h3>
		</div>
	</div>
</div>
