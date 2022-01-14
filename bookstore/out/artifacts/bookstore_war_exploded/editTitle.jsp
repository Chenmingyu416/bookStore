<%--
  Created by IntelliJ IDEA.
  User: chenmingyu
  Date: 2022/1/10
  Time: 10:08 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="bean.*" %>
<%request.setCharacterEncoding("utf-8");%>
<html>
<head>
    <title>Title</title>
    <%
        Title title=(Title)request.getAttribute("title");
    %>
</head>
<body>
<h1>Edit Information</h1>

<form method="post" action="DoSaveEditTitle">
    <table>
        <tr><td>Isbn</td>
            <td><input type="text" name="isbn" readOnly="true"
                       value="<%=title.getIsbn() %>"/></td></tr>
        <% session.setAttribute("isbn",title.getIsbn());%>
        <tr><td>Title</td>
            <td><input type="text" name="title"
                       value="<%=title.getTitle()%>"/></td></tr>
        <tr><td>Edition Number</td>
            <td><input type="text" name="editionNumber"
                       value="<%=title.getEditionNumber() %>"/></td></tr>
        <tr><td>Publisher Id</td>
            <td><input type="text" name="publisherId" readOnly="true"
                       value="<%=title.getPublisherId() %>"/></td></tr>
        <tr><td>Price</td>
            <td><input type="text" name="price"
                       value="<%=title.getPrice()%>"/></td></tr>
        <tr><td>copyright</td>
            <td><input type="text" name="copyright"
                       value="<%=title.getCopyright() %>"/></td></tr>
        <tr><td><input type="submit" value="submit"/></td></tr>
    </table>
</form><br>
</body>
</html>
