<%@page contentType="text/html;charset=utf-8" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<html>
<head>
<title>${product.productName } - 图书 - 当当网</TITLE>
<METa http-equiv=Content-Type content="text/html; charset=utf-8">
<liNK href="../product_files/dangdang.css" type=text/css rel=Stylesheet>
<liNK href="../product_files/book.css" type=text/css rel=stylesheet>
</head>
<body>
	<div id=main>
		<div class=mainsearch></div>
		<div class=wrap>
			<div class=right>
				<div class=right_wai>
					<div class=shuming>
						<div class=shuming_left>
							<span class=black000><a name=top_bk></a>${product.productName }</span>
						</div>
						<div class=book_case>
							<span class=seriesname>丛书名： ${product.productName }</span>
						</div>
						<div class=empty_box></div>
					</div>
					<div class=book_left>
						<div class=book_pic>
							<a
								href="javascript:imgbtnChgPrd_Click(this,'http://img39.ddimg.cn/93/5/20867709-1_o.jpg')"
								name=bigpicture_bk><img id=img_show_prd
								src="../productImages/${product.productPic }" width=120></a>
						</div>
						<input id=hid_largepictureurl type=hidden>
					</div>
					<div class=book_right>
						<div id=author_>作 者： ${product.productAuthor }</div>
						<div id=publisher_>出 版 社： ${product.productPublish }</div>
						<ul>
							<li>出版时间： <s:date name="product.productPublishTime"
									format="yyyy-MM-dd" /></li>
							<li>字 数： ${product.productWord }</li>
							<li>版 次： ${product.productEdition }</li>
							<li>页 数： ${product.productPage }</li>
							<li>印刷时间： <s:date name="product.productPrintingTime"
									format="yyyy-MM-dd" /></li>
							<li>开 本： ${product.productSize }</li>
							<li>印 次：${product.productImpression }</li>
							<li>纸 张： ${product.productPapaer }</li>
							<li>I S b N ： ${product.productIsbn }</li>
							<li>包 装： ${product.productPack }</li>
						</ul>
						<div id=__categroy_bk>
							所属分类：
							<s:action name="categoryByProductId" executeResult="true"
								namespace="/" />
						</div>
						<div class=jiage>
							<span class=gray87>定价：<span class=del id=originalPriceTag>￥${product.productPrice }</span></span>
							<span class=redc30>当当价：￥<b>${product.productDprice }</b></span>
							节省：￥20.0
							<div class=pd_buy_num>
								<div class=clear></div>
							</div>
							<div class=goumai>
								<a
									href="<s:url namespace='/' action='addCart' />?product.productId=${product.productId }"
									name=purchase_book> <img id="buy"
									src="../product_files/booksale.gif"><span
									id="cartInfo_11"></span>
								</a>
							</div>
						</div>
					</div>
					<div id=dvTPUrls></div>
					<div id=__zhinengbiaozhu_bk>
						<div class=dashed></div>
						<h2 class=black14>
							<img src="../product_files/bg_point1.gif" align=absMiddle>
							编辑推荐
						</h2>
						<div class=zhengwen>${product.productRecommend }</div>
						<div class=dashed></div>
						<h2 class=black14>
							<img src="../product_files/bg_point1.gif" align=absMiddle>
							内容简介
						</h2>
						<div class=zhengwen>${product.productComtentIntro }</div>
						<div class=dashed></div>
						<h2 class=black14>
							<img src="../product_files/bg_point1.gif" align=absMiddle>
							作者简介
						</h2>
						<div class=zhengwen>${product.productAuthorIntro }</div>
						<div class=dashed></div>
						<h2 class=black14>
							<img src="../product_files/bg_point1.gif" align=absMiddle>
							目录
						</h2>
						<div class=zhengwen>${product.productCatolog }</div>
						<div class=dashed></div>
						<h2 class=black14>
							<img src="../product_files/bg_point1.gif" align=absMiddle>
							媒体评论
						</h2>
						<div class=zhengwen>${product.productComment }</div>
						<div class=dashed></div>
						<h2 class=black14>
							<img src="../product_files/bg_point1.gif" align=absMiddle>
							书摘插图
						</h2>
						<div class=zhengwen>忘写了，</div>
					</div>
				</div>
			</div>
			<!--页尾 开始 -->
			<div class=public_footer_add_s></div>
			<!--页尾 end -->
			<!--页尾开始 -->
			<%@include file="../common/foot.jsp"%>
			<!--页尾结束 -->
		</div>
	</div>
</body>
</html>