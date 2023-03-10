<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>茶颜观舍会员注册页面</title>
	<!--静态包含base标签，css样式，jQuery文件-->
<%@include file="/pages/common/head.jsp"%>
<script type="text/javascript">
	//页面加载完成之后
	$(function () {
		//验证码的图片绑定单击事件
		$("#code_img").click(function () {
			//在事件响应的function函数中有一个this对象，这个this对象，是当前正在响应事件的dom对象
			//src可读可写
			this.src = "${basePath}kaptcha.jpg?d="+new Date();
		})
		//给按钮绑定单击事件
		$("#sub_btn").click(function () {
			// 验证用户名：必须由字母，数字下划线组成，并且长度为 5 到 12 位
			//获取用户名
			var usernameText=$("#username").val();
			//去除空白
			var usernameText=$.trim(usernameText);
			//创建正则表达式
			var usernamePatt=/^\w{5,12}$/;
			//使用test方法验证
			if (!usernamePatt.test(usernameText)){
				$("span.errorMsg").text("用户名不合法！");
				return false;
			}
			// 验证密码：必须由字母，数字下划线组成，并且长度为 5 到 12 位
			//获取密码
			var passwordText=$("#password").val();
			//去除空白
			var passwordText=$.trim(passwordText);
			//创建正则表达式
			var passwordPatt=/^\w{5,12}$/;
			//使用test方法验证
			if (!passwordPatt.test(passwordText)){
				$("span.errorMsg").text("密码不合法！");
				return false;
			}
			// 验证确认密码：和密码相同
			//获取确认密码内容
			var repwdText=$("#repwd").val();
			//比较
			if (repwdText!=passwordText){
				$("span.errorMsg").text("密码和确认密码不相同！");
				return false;
			}
			// 邮箱验证：xxxxx@xxx.com
			var emailText=$("#email").val();
			var emailPatt=/^[a-z\d]+(\.[a-z\d]+)*@([\da-z](-[\da-z])?)+(\.{1,2}[a-z]+)+$/;
			if (!emailPatt.test(emailText)){
				$("span.errorMsg").text("邮箱格式不合法！");
				return false;
			}
			// 验证码：现在只需要验证用户已输入。因为还没讲到服务器。验证码生成。
			var coldText=$("#code").val();
				if (coldText==null||coldText==""){
					$("span.errorMsg").text("验证码不能为空！");
					return false;
				}

		})


		//获得用户名焦点事件
		$("#username").focus(function () {
			//如果有警告信息，让文本框清零
			if ($("span.errorMsg").text(!"")){
				$("#username").val("");
			}
			//警告信息清零
			$("span.errorMsg").text("");
		})

		//获得密码焦点事件
		$("#password").focus(function () {
			//如果有警告信息，让文本框清零
			if ($("span.errorMsg").text(!"")){
				$("#password").val("");
			}
			//警告信息清零
			$("span.errorMsg").text("");
		})

		//获得确认密码焦点事件
		$("#repwd").focus(function () {
			//如果有警告信息，让文本框清零
			if ($("span.errorMsg").text(!"")){
				$("#repwd").val("");
			}
			//警告信息清零
			$("span.errorMsg").text("");
		})
		//获得邮箱焦点事件
		$("#email").focus(function () {
			//如果有警告信息，让文本框清零
			if ($("span.errorMsg").text(!"")){
				$("#email").val("");
			}
			//警告信息清零
			$("span.errorMsg").text("");
		})

	})
</script>
<style type="text/css">
	.login_form{
		height:420px;
		margin-top: 25px;
	}
	
</style>
</head>
<body>
		<div id="login_header">
			<img class="logo_img" alt="" src="static/img/logo.gif" >
		</div>
		
			<div class="login_banner">
			
				<div id="l_content">
					<span class="login_word">欢迎注册</span>
				</div>
				
				<div id="content">
					<div class="login_form">
						<div class="login_box">
							<div class="tit">
								<h1>注册茶颜观舍会员</h1>
								<span class="errorMsg">
<%--									<%=request.getAttribute("name")==null?"":request.getAttribute("name")%>--%>
										${requestScope.name}
								</span>
							</div>
							<div class="form">
								<form action="userServlet" method="post">
									<input type="hidden" name="action" value="regist">
									<label>用户名称：</label>
									<input class="itxt" type="text" placeholder="请输入用户名" autocomplete="off" tabindex="1" name="username" id="username"
<%--									value="<%=request.getAttribute("username")==null?"":request.getAttribute("username")%>"/>--%>
										value="${requestScope.username}"/>
									<br />
									<br />
									<label>用户密码：</label>
									<input class="itxt" type="password" placeholder="请输入密码" autocomplete="off" tabindex="1" name="password" id="password" />
									<br />
									<br />
									<label>确认密码：</label>
									<input class="itxt" type="password" placeholder="确认密码" autocomplete="off" tabindex="1" name="repwd" id="repwd" />
									<br />
									<br />
									<label>电子邮件：</label>
									<input class="itxt" type="text" placeholder="请输入邮箱地址" autocomplete="off" tabindex="1" name="email" id="email"
<%--									value="<%=request.getAttribute("email")==null?"":request.getAttribute("email")%>"/>--%>
										value="${requestScope.email}"/>
									<br />
									<br />
									<label>验证码：</label>
									<input class="itxt" type="text" name="code" style="width: 150px;" id="code"
<%--									value="<%=request.getAttribute("code")==null?"":""%>"/>--%>
										   value="${empty requestScope.code?"":"验证码输入错误"}"/>
									<img id="code_img" alt="" src="kaptcha.jpg" style="float: right; margin-right: 40px; width:90px; height: 39px">
									<br />
									<br />
									<input type="submit" value="注册" id="sub_btn" />
									
								</form>
							</div>
							
						</div>
					</div>
				</div>
			</div>
		<%--静态包含页脚代码--%>
		<%@include file="/pages/common/footer.jsp"%>
</body>
</html>