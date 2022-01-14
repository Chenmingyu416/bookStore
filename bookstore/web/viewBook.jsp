<%--
  Created by IntelliJ IDEA.
  User: chenmingyu
  Date: 2022/1/11
  Time: 12:08 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="bean.*, java.util.*" %>
<jsp:useBean id="dao" class="bean.TitleDaoImpl" scope="request"/>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1 ALIGN=center>View Book</h1>
<table ALIGN=center bgcolor=lightgrey>
    <tr>
        <td>
            ISBN
        </td>
        <td>
            Title
        </td>
        <td>
            Edition Number
        </td>
        <td>
            Copyright
        </td>
        <td>
            Price
        </td>
    </tr>
    <%
        List list=dao.getTitles();
        Title titles=null;
        for(int i=0;i<list.size();i++){
            titles=(Title)list.get(i);
    %>
    <tr bgcolor=cyan>
        <td><a href="ToViewTitle?isbn=<%=titles.getIsbn()%>">
            <%=titles.getIsbn() %></a></td>
        <td><%=titles.getTitle() %></td>
        <td><%=titles.getEditionNumber() %></td>
        <td><%=titles.getCopyright()%></td>
        <td><%=titles.getPrice() %> </td>
    </tr>
    <%
        }
    %>
</table>

</body>
</html>
