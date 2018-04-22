<%@page contentType="text/html;charset=utf-8" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<h2>编辑推荐</h2>
<s:iterator value="productList">
	<div id=__bianjituijian/danpin>
		<div class=second_c_02>
			<div class=second_c_02_b1>
				<div class=second_c_02_b1_1>
					<a href='product?product.productId=${productId }' target='_blank'><img
						src="../productImages/${productPic }" width="70" border=0 /> </a>
				</div>
				<div class=second_c_02_b1_2>
					<h3>
						<a href='product?product.productId=${productId }' target='_blank'
							title='输赢'>${productName }</a>
					</h3>
					<h4>
						作者：${productAuthor } 著 <br /> 出版社：${productPublish }&nbsp;&nbsp;&nbsp;&nbsp;出版时间：
						<s:date name="productPublishTime" format="yyyy-MM-dd" />
					</h4>
					<h5>${productComtentIntro }</h5>
					<h6>定价：￥${productPrice }&nbsp;&nbsp;当当价：${productDprice }</h6>
					<div class=line_xx></div>
				</div>
			</div>
		</div>
	</div>
</s:iterator>
