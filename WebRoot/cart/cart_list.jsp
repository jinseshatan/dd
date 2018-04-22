<%@page contentType="text/html;charset=utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>当当图书 – 全球最大的中文网上书店</title>
<link href="../css/book.css" rel="stylesheet" type="text/css" />
<link href="../css/second.css" rel="stylesheet" type="text/css" />
<link href="../css/secBook_Show.css" rel="stylesheet" type="text/css" />
<link href="../css/shopping_vehicle.css" rel="stylesheet" type="text/css" />
<style type="text/css">
span {
	text-align: center;
}
</style>
<script type="text/javascript" src="../js/jquery-1.8.3.js"></script>
<script type="text/javascript">
	function modify(count) {
		var currentCount = $(count).prev().val();
		var productId = $(count).parent().siblings().first().text();
		location.href = "modify?itemCount=" + currentCount
				+ "&product.productId=" + productId;
	}

	function removee(rm) {
		var productId = $(rm).parent().siblings().first().text();
		location.href = "remove?product.productId=" + productId;
	}

	function recovery(rc) {
		var productId = $(rc).parent().siblings().first().text();
		location.href = "recovery?product.productId=" + productId;
	}

	$(
		function() {
			var totalPrice = 0;
			$(".price").each(
					function() {
						totalPrice = totalPrice + parseFloat($(this).text()) * parseFloat($(this).next().text());
					});
			$("#total_account").html(totalPrice);

			var priceeeeeeeeee = 0;
			$(".priceeeeeeeeee").each(
					function() {
						priceeeeeeeeee = priceeeeeeeeee + parseFloat($(this).text()) * parseFloat($(this).next().next().text());
					});
			var savePrice = parseFloat(priceeeeeeeeee - totalPrice);
			$("#total_economy").html(savePrice);
	})
</script>
</head>
<body>
	<br />
	<br />
	<div class="my_shopping">
		<img class="pic_shop" src="../images/pic_myshopping.gif" />

	</div>
	<div id="div_choice" class="choice_merch">
		<s:if test="#session.itemMap != null && #session.itemMap.size() > 0">
			<h2 id="cart_tips">您已选购以下商品</h2>
			<div class="choice_bord">
				<table class="tabl_buy" id="tbCartItemsNormal"
					style="text-align:center;">
					<tr class="tabl_buy_title">
						<td class="buy_td_6"><span></span></td>
						<td><span>商品名</span></td>
						<td class="buy_td_5"><span class="span_w2">市场价</span></td>
						<td class="buy_td_4"><span class="span_w3">当当价</span></td>
						<td class="buy_td_1"><span class="span_w2">数量</span></td>
						<td class="buy_td_2"><span>变更数量</span></td>
						<td class="buy_td_1"><span>删除</span></td>
					</tr>
					<tr class='objhide' over="no">
						<td colspan="8">&nbsp;</td>
					</tr>

					<!-- 购物列表开始 -->
					<s:iterator value="#session.itemMap">
						<tr class='td_no_bord'>
							<td class="buy_td_6"><span class="objhide"><s:property
										value="value.productId" /></span></td>
							<td><a
								href="../main/product?product.productId=<s:property value='value.product.productId' />"><s:property
										value="value.product.productName" /></a></td>
							<td class="priceeeeeeeeee"><span class="c_gray"><s:property
										value="value.product.productPrice" /></span></td>
							<td class="price"><span><s:property
										value="value.product.productDprice" /></span></td>
							<td class="count"><s:property value="value.itemCount" /></td>

							<td><input class="del_num" type="text" size="3"
								maxlength="4" value="<s:property value='value.itemCount' />" />
								<a href="#" onclick="modify(this)">变更</a></td>
							<td><a href="#" onclick="removee(this)">删除</a></td>
						</tr>
					</s:iterator>
					<!-- 购物列表结束 -->
				</table>

				<div class="choice_balance">
					<div class="select_merch"
						style="line-height: 54px; margin: 0 0 0 10px;">
						<a href='../main/main.jsp'> 继续挑选商品>></a>
					</div>
					<div class="total_balance">
						<div class="save_total">
							您共节省： <span class="c_red"> ￥<span id="total_economy"></span>
							</span> <span id='total_vip_economy' class='objhide'> ( 其中享有优惠： <span
								class="c_red"> ￥<span id='span_vip_economy'>0.00</span>
							</span> )
							</span> <span style="font-size: 14px">|</span> <span class="t_add">商品金额总计：</span>
							<span class="c_red_b"> ￥ <span id='total_account'></span>
							</span>
						</div>
						<div id="balance" class="balance">
							<a name='checkout' href='../order/order_info.jsp'> <img
								src="../images/butt_balance.gif" alt="结算" border="0" title="结算" />
							</a>
						</div>
					</div>
				</div>
			</div>
		</s:if>
		<s:if test="#session.itemMap == null || #session.itemMap.size() == 0">
			<div id="div_no_choice">
				<div class="no_select">
					您还没有选购任何商品[<a href='../main/main.jsp'> 继续挑选商品&gt;&gt;</a>]
				</div>
			</div>

		</s:if>
	</div>

	<!-- 用户删除恢复区 -->

	<s:if
		test="#session.recoveryMap != null && #session.recoveryMap.size() > 0">
		<div id="divCartItemsRemoved" class="del_merch">
			<div class="del_title">您已删除以下商品，如果想重新购买，请点击“恢复”</div>
			<table class=tabl_del id=del_table>
				<tbody>
					<s:iterator value="#session.recoveryMap">
						<tr>
							<td width="58" class=buy_td_6><span class="objhide"><s:property
										value="value.productId" /></span></td>
							<td width="365" class=t2><a href="#"><s:property
										value="value.product.productName" /></a></td>
							<td width="106" class=buy_td_5>￥<s:property
									value="value.product.productPrice" /></td>
							<td width="134" class=buy_td_4><span>￥<s:property
										value="value.product.productDprice" /></span></td>
							<td width="56" class=buy_td_1><a href="#"
								onclick="recovery(this)">恢复</a></td>
							<td width="16" class=objhide>&nbsp;</td>
						</tr>
					</s:iterator>

					<tr class=td_add_bord>
						<td colspan=8>&nbsp;</td>
					</tr>
				</tbody>
			</table>
		</div>
	</s:if>
	<br />
	<br />
	<br />
	<br />
	<!--页尾开始 -->
	<%@include file="../common/foot.jsp"%>
	<!--页尾结束 -->
</body>
</html>