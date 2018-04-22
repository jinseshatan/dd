<%@page contentType="text/html;charset=utf-8" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<h2 class="t_xsrm">新书热卖榜</h2>
<div id="NewProduct_1_o_t" onmouseover="">
	<ul>
		<s:iterator value="productList">
			<li style="text-align:center;"><a target='_blank'
				href="product?product.productId=${productId }">${productName }</a></li>
		</s:iterator>
	</ul>
	<h3 class="second">
		<span class="dot_r"></span> <span
			style="text-align:right;display:block;padding:5px 10px 0 0;"><a
			href="#" target="_blank">更多&gt;&gt;</a></span>
	</h3>
</div>