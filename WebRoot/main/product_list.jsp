<%@page contentType="text/html;charset=utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>

<div id="divRight" class="list_right">

	<div id="book_list" class="list_r_title">
		<div class="list_r_title_text">排序方式</div>
		<select onchange='' name='select_order' size='1'
			class='list_r_title_ml'>
			<option value="">按上架时间 降序</option>
		</select>
		<div id="divTopPageNavi" class="list_r_title_text3">

			<!--分页导航开始-->
			<s:if test="page.isHavePrePage">
				<div class='list_r_title_text3a'>
					<a name="link_page_next"
						href="book_list.jsp?sc=${sc }&ssc=${ssc }&page.pageIndex=${page.pageIndex -  1}">
						<img src='../images/page_up.gif' />
					</a>
				</div>
			</s:if>
			<s:if test="!page.isHavePrePage">
				<div class='list_r_title_text3a'>
					<a name="link_page_next"
						href="book_list.jsp?sc=${sc }&ssc=${ssc }&page.pageIndex=1"> <img
						src='../images/page_up_gray.gif' />
					</a>
				</div>
			</s:if>

			<div class='list_r_title_text3b'>第${page.pageIndex }页/共${page.totalPage }页
			</div>

			<s:if test="page.isHaveNextPage">
				<div class='list_r_title_text3a'>
					<a name="link_page_next"
						href="book_list.jsp?sc=${sc }&ssc=${ssc }&page.pageIndex=${page.pageIndex + 1}">
						<img src='../images/page_down.gif' />
					</a>
				</div>
			</s:if>
			<s:if test="!page.isHaveNextPage">
				<div class='list_r_title_text3a'>
					<a name="link_page_next"
						href="book_list.jsp?sc=${sc }&ssc=${ssc }&page.pageIndex=${page.totalPage}">
						<img src='../images/page_down_gray.gif' />
					</a>
				</div>
			</s:if>
			<!--分页导航结束-->
		</div>
	</div>

	<!--商品条目开始-->

	<div class="list_r_line"></div>

	<div class="list_r_list">

		<s:iterator value="productList" var="p">

			<div class="clear"></div>
			<span class="list_r_list_book"><a name="link_prd_img"
				href='product?product.productId=${p.productId }'> <img
					src="../productImages/${p.productPic }" /></a> </span>
			<h2>
				<a name="link_prd_name"
					href='product?product.productId=${p.productId }'>${p.productName }</a>
			</h2>
			<h3>顾客评分：${p.productScore }</h3>
			<h4 class="list_r_list_h4">
				作 者: <a href='#' name='作者'>${p.productAuthor }</a>
			</h4>
			<h4>
				出版社： <a href='#' name='出版社'>${p.productPublish }</a>
			</h4>
			<h4>
				出版时间：
				<s:date name="#p.productPublishTime" format="yyyy-MM-dd" />
			</h4>
			<h5>${productRecommend }</h5>
			<div class="clear"></div>
			<h6>
				<span class="del">￥${productPrice }</span> <span class="red">￥${productDprice }</span>
				节省：￥20
			</h6>
			<span class="list_r_list_button"> <a
				href="<s:url namespace='/' action='addCart' />?product.productId=${productId }">
					<img src='../images/buttom_goumai.gif' />
			</a>
			</span>
			<span id="cartinfo"></span>
		</s:iterator>
	</div>

	<div class="clear"></div>
	<!--商品条目结束-->

	<div class="clear"></div>
	<div id="divBottomPageNavi" class="fanye_bottom"></div>

</div>