<%@page contentType="text/html;charset=utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>登录 - 当当网</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="../css/login.css" rel="stylesheet" type="text/css" />
<link href="../css/page_bottom.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../js/jquery-1.8.3.js"></script>
<script type="text/javascript">
	$(function() {
		function checkEmail() {
			var email = $("#txtEmail").val();
			if (email == "") {
				$("#divErrorMssage").text("邮箱不能为空！");
				return false;
			} else {
				$("#divErrorMssage").text("");
				return true;
			}
			;
		}
		$("#txtEmail").focusout(checkEmail);

		function checkPwd() {
			var pwd = $("#txtPassword").val();
			if (pwd == "") {
				$("#divErrorMssage").text("密码不能为空！");
				return false;
			} else {
				$("#divErrorMssage").text("");
				return true;
			}
			;
		}
		$("#txtPassword").focusout();

		$("#f").submit(function() {
			if (checkEmail() == true && checkPwd() == true) {
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
	<div class="enter_part">
		<%@include file="../common/introduce.jsp"%>

		<div class="enter_in">
			<div class="bj_top"></div>
			<div class="center">
				<div
					style="text-align:center; height:30px; padding:10px; color:red;"
					id="divErrorMssage"></div>
				<div class="main">
					<h3>登录当当网</h3>
					<form method="post" action="<s:url namespace='/' action='login' />"
						id="f">
						<ul>
							<li><span>请输入Email地址：</span> <input type="text"
								name="user.userEmail" id="txtEmail" class="textbox" /></li>
							<li><span class="blank">密码：</span> <input type="password"
								name="user.userPassword" id="txtPassword" class="textbox" /></li>
							<li><input type="submit" id="btnSignCheck"
								class="button_enter" value="登 录" /></li>
						</ul>
						<input type="hidden" name="uri" value="${uri}" />
					</form>
				</div>
				<div class="user_new">
					<p>您还不是当当网用户？</p>
					<p class="set_up">
						<a href="register_form.jsp">创建一个新用户&gt;&gt;</a>
					</p>
				</div>
			</div>
		</div>
	</div>

	<%@include file="../common/foot1.jsp"%>

</body>
</html>

