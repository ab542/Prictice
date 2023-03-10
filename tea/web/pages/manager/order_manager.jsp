<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>订单管理</title>
	<!--静态包含base标签，css样式，jQuery文件-->
	<%@include file="/pages/common/head.jsp"%>
</head>
<body>
	
	<div id="header">
			<img class="logo_img" alt="" src="../../static/img/logo.gif" >
			<span class="wel_word">订单管理系统</span>
		<%--			静态包含manager管理模块的菜单--%>
		<%@include file="/pages/common/manager_menu_jsp.jsp"%>
	</div>
	
	<div id="main">
		<table>
			<tr>
				<td>编号</td>
				<td>订单号</td>
				<td>下单日期</td>
				<td>总金额</td>
				
			</tr>
			<c:if test="${empty sessionScope.dingDans}">
				<td colspan="4"><a href="index.jsp" style="text-decoration: none">亲，当前订单为空！快跟小伙伴们去购物吧！！！</a></td>
			</c:if>
			<c:if test="${not empty sessionScope.dingDans}">
				<c:forEach items="${sessionScope.dingDans}" var="dingdan">
					<tr>
						<td>${dingdan.id}</td>
						<td>${dingdan.dingDanHao}</td>
						<td>${dingdan.date}</td>
						<td>${dingdan.price}</td>
					</tr>
				</c:forEach>
			</c:if>
		</table>
	</div>

	<%--静态包含页脚代码--%>
	<%@include file="/pages/common/footer.jsp"%>
</body>
</html>