<%--
  Created by IntelliJ IDEA.
  User: chenmingyu
  Date: 2022/1/11
  Time: 5:07 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<html>
<head>
</head>

<body>
    <font color="blue" size="3">Username:<%=request.getSession().getAttribute("userName") %></font><hr>
    <font color="red" size="4"  style="font-family:simhei">Frontend System</font><hr>
    <a href=viewBook.jsp target=main>View Book</a>
    <br><br>
    <font color="red" size="4"  style="font-family:simhei">Backend System</font>
    <hr>
    <a href=listBook.jsp target=main>List Book</a>
</body>
</html>
