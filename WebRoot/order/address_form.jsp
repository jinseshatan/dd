<%@page contentType="text/html;charset=utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>生成订单 - 当当网</title>
<link href="../css/login.css" rel="stylesheet" type="text/css" />
<link href="../css/page_bottom.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../js/jquery-1.8.3.js"></script>
<script type="text/javascript">
	$(function() {

		$("#address").change(function() {
			var addressId = parseInt($("#address").val());
			location.href = "address_form.jsp?address.addressId=" + addressId;
		});

		function checkReceiveName() {
			var receiveName = $("#receiveName").val();
			if (receiveName == "") {
				$("#nameValidMsg").css({
					color : "#ff0011"
				});
				return false;
			} else {
				$("#nameValidMsg").css({
					color : "black"
				});
				return true;
			}
			;
		}
		$("#receiveName").focusout(checkReceiveName);

		function checkFullAddress() {
			var fullAddress = $("#fullAddress").val();
			if (fullAddress == "") {
				$("#addressValidMsg").css({
					color : "#ff0011"
				});
				return false;
			} else {
				$("#addressValidMsg").css({
					color : "black"
				});
				return true;
			}
			;
		}
		$("#fullAddress").focusout(checkFullAddress);

		function checkPostalCode() {
			var postalCode = $("#postalCode").val();
			if (postalCode == "") {
				$("#codeValidMsg").css({
					color : "#ff0011"
				});
				return false;
			} else {
				$("#codeValidMsg").css({
					color : "black"
				});
				return true;
			}
			;
		}
		$("#postalCode").focusout(checkPostalCode);

		function checkPhone() {
			var phone = $("#phone").val();
			if (phone == "") {
				$("#phoneValidMsg").css({
					color : "#ff0011"
				});
				return false;
			} else {
				$("#phoneValidMsg").css({
					color : "black"
				});
				return true;
			}
			;
		}
		$("#phone").focusout(checkPhone);

		function checkMobile() {
			var mobile = $("#mobile").val();
			if (mobile == "") {
				$("#mobileValidMsg").css({
					color : "#ff0011"
				});
				return false;
			} else {
				$("#mobileValidMsg").css({
					color : "black"
				});
				return true;
			}
			;
		}
		$("#mobile").focusout(checkMobile);

		$("#f").submit(
				function() {
					if (checkReceiveName() == true & checkFullAddress() == true
							& checkPostalCode() == true & checkMobile() == true
							& checkPhone() == true) {
						return true;
					} else {
						return false;
					}
				});
	});
</script>
</head>
<body>
	<%@include file="../common/head1.jsp"%>
	<div class="login_step">
		生成订单骤: 1.确认订单 > <span class="red_bold"> 2.填写送货地址</span> > 3.订单成功
	</div>
	<div class="fill_message">
		<s:action name="queryAddressByUserId" executeResult="true" namespace="/" />
		<s:action name="queryAddressById" executeResult="true" namespace="/" />
	</div>
	<%@include file="../common/foot1.jsp"%>
</body>
</html>

