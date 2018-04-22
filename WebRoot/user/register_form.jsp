<%@page contentType="text/html;charset=utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>用户注册 - 当当网</title>
<link href="../css/login.css" rel="stylesheet" type="text/css" />
<link href="../css/page_bottom.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../js/jquery-1.8.3.js"></script>
<script type="text/javascript">
	$(function() {
		function checkEmail() {
			var email = $("#txtEmail").val();
			if (email == "") {
				$("#email\\.info").text("邮箱不能为空！");
				return false;
			} else {
				$("#email\\.info").text("");
				return true;
			}
			;
		}
		$("#txtEmail").focusout(checkEmail);

		function checkName() {
			var name = $("#txtNickName").val();
			if (name == "") {
				$("#name\\.info").text("用户名不能为空！");
				return false;
			} else {
				$("#name\\.info").text("");
				return true;
			}
			;
		}
		$("#txtNickName").focusout();

		function checkPwd() {
			var pwd = $("#txtPassword").val();
			if (pwd == "") {
				$("#password\\.info").text("密码不能为空！");
				return false;
			} else {
				$("#password\\.info").text("");
				return true;
			}
			;
		}
		$("#txtPassword").focusout();

		function checkRepwd() {
			var repwd = $("#txtRepeatPass").val();
			var pwd = $("#txtPassword").val();
			if (repwd == "") {
				$("#repassword\\.info").text("确认密码不能为空！");
				return false;
			} else if (repwd != pwd) {
				$("#repassword\\.info").text("两次密码不一致！");
				return false;
			} else {
				$("#repassword\\.info").text("");
				return true;
			}
			;
		}
		$("#txtRepeatPass").focusout(checkRepwd);

		$("#f").submit(
				function() {
					if (checkEmail() == true & checkName() == true
							& checkPwd() == true & checkRepwd() == true) {
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
		注册步骤: <span class="red_bold">1.填写信息</span> > 2.验证邮箱 > 3.注册成功
	</div>
	<div class="fill_message">
		<form name="ctl00" method="post"
			action="<s:url namespace='/' action='register' />" id="f">
			<h2>以下均为必填项</h2>
			<table class="tab_login">
				<tr>
					<td valign="top" class="w1">请填写您的Email地址：</td>
					<td><input name="user.userEmail" type="text" id="txtEmail"
						class="text_input" />
						<div class="text_left" id="emailValidMsg">
							<p>请填写有效的Email地址，在下一步中您将用此邮箱接收验证邮件。</p>
							<span id="email.info" style="color:red"></span>
						</div></td>
				</tr>
				<tr>
					<td valign="top" class="w1">设置您在当当网的昵称：</td>
					<td><input name="user.userNikcname" type="text"
						id="txtNickName" class="text_input" />
						<div class="text_left" id="nickNameValidMsg">
							<p>您的昵称可以由小写英文字母、中文、数字组成，</p>
							<p>长度4－20个字符，一个汉字为两个字符。</p>
							<span id="name.info" style="color:red"></span>
						</div></td>
				</tr>
				<tr>
					<td valign="top" class="w1">设置密码：</td>
					<td><input name="user.userPassword" type="password"
						id="txtPassword" class="text_input" />
						<div class="text_left" id="passwordValidMsg">
							<p>您的密码可以由大小写英文字母、数字组成，长度6－20位。</p>
							<span id="password.info" style="color:red"></span>
						</div></td>
				</tr>
				<tr>
					<td valign="top" class="w1">再次输入您设置的密码：</td>
					<td><input name="repassword" type="password"
						id="txtRepeatPass" class="text_input" />
						<div class="text_left" id="repeatPassValidMsg">
							<span id="repassword.info" style="color:red"></span>
						</div></td>
				</tr>
				<tr>
					<td valign="top" class="w1">验证码：</td>
					<td><img class="yzm_img" id='imgVcode'
						src="<s:url namespace='/' action='getValidate' />" /> <input
						name="number" type="text" id="txtVerifyCode" class="yzm_input" />
						<div class="text_left t1">
							<p class="t1">
								<span id="vcodeValidMsg">请输入图片中的四个字母。</span> <span
									id="number.info" style="color:red"></span> <a
									href="register_form.jsp">看不清楚？换个图片</a>
							</p>
						</div></td>
				</tr>
			</table>

			<div class="login_in">

				<input id="btnClientRegister" class="button_1" name="submit"
					type="submit" value="注 册" />
			</div>
		</form>
	</div>
	<%@include file="../common/foot1.jsp"%>
</body>
</html>

