<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>编辑茶叶</title>
	<!--静态包含base标签，css样式，jQuery文件-->
	<%@include file="/pages/common/head.jsp"%>
<style type="text/css">
	h1 {
		text-align: center;
		margin-top: 200px;
	}
	
	h1 a {
		color:red;
	}
	
	input {
		text-align: center;
	}
</style>
</head>
<body>
		<div id="header">
			<img class="logo_img" alt="" src="../../static/img/logo.gif" >
			<span class="wel_word">编辑茶叶</span>
<%--			静态包含manager管理模块的菜单--%>
			<%@include file="/pages/common/manager_menu_jsp.jsp"%>
		</div>
		
		<div id="main">
			<form action="manager/bookServlet" method="get">
				<input type="hidden" name="pageNo" value="${param.pageNo}">
				<input type="hidden" name="action" value="${empty param.id ? "add":"update"}">
				<input type="hidden" name="id" value="${requestScope.book.id }">

				<table>
					<tr>
						<td>名称</td>
						<td>价格</td>
						<td>产地</td>
						<td>销量</td>
						<td>库存</td>
						<td>特效</td>
						<td>种类</td>
						<td colspan="2">操作</td>
					</tr>		
					<tr>
						<td><input name="name" type="text" value="${requestScope.book.name}"/></td>
						<td><input name="price" type="text" value="${requestScope.book.price}"/></td>
						<td><input name="address" type="text" value="${requestScope.book.address}"/></td>
						<td><input name="sales" type="text" value="${requestScope.book.sales}"/></td>
						<td><input name="stock" type="text" value="${requestScope.book.stock}"/></td>
						<td><input name="texiao" type="text" value="${requestScope.book.texiao}"/></td>
						<td><input name="type" type="text" value="${requestScope.book.type}"/></td>
						<td><input type="submit" value="提交"/></td>
					</tr>	
				</table>
			</form>
			
	
		</div>

		<%--静态包含页脚代码--%>
		<%@include file="/pages/common/footer.jsp"%>
</body>
</html>