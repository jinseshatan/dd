<%@page contentType="text/html;charset=utf-8" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<h2>
	<span class="more"><a href="#" target="_blank">更多&gt;&gt;</a> </span>最新上架图书
</h2>
<div class="book_c_04">

	<!--热销图书A开始-->
	<s:iterator value="productList">
		<div class="second_d_wai">
			<div class="img">
				<a href="product?product.productId=${productId }" target='_blank'><img
					src="../productImages/${productPic }" border=0 /> </a>
			</div>
			<div class="shuming">
				<a href="product?product.productId=${productId }" target="_blank">${productName }</a><a
					href="#" target="_blank"></a>
			</div>
			<div class="price">定价：￥${productPrice }</div>
			<div class="price">当当价：￥${productDprice }</div>
		</div>
		<div class="book_c_xy_long"></div>
	</s:iterator>
	<!--热销图书A结束-->

</div>
<div class="clear"></div>