<%--
  Created by IntelliJ IDEA.
  User: 王说
  Date: 2022/11/24
  Time: 16:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div>
    <span>欢迎<span class="um_span">${sessionScope.user.username}</span>光临茶颜观舍</span>
    <a href="/tea/dingDanServlet?action=queryDingDans">我的订单</a>
    <a href="userServlet?action=loginOut">注销</a>&nbsp;&nbsp;
    <a href="index.jsp">返回</a>
</div>
