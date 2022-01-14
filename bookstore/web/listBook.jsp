<%--
  Created by IntelliJ IDEA.
  User: chenmingyu
  Date: 2022/1/10
  Time: 9:51 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="bean.*, java.util.*" %>
<%--直接从titleDaoImpl展示页面--%>
<jsp:useBean id="dao" class="bean.TitleDaoImpl" scope="request"/>
<%request.setCharacterEncoding("utf-8");%>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h1 ALIGN=center>Book List</h1>
<center>
<table bgcolor=lightgrey>
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
    <% List list=dao.getTitles();
        Title titles=null;
        for(int i=0;i<list.size();i++){

            titles=(Title)list.get(i);
    %>
    <tr bgcolor=cyan>
        <td><a href="ToEditTitle?isbn=<%=titles.getIsbn() %>" >
            <%=titles.getIsbn() %>
            </a>
        </td>
        <td> <%=titles.getTitle()%> </td>
        <td><%=titles.getEditionNumber() %></td>
        <td><%=titles.getCopyright()%></td>
        <td><%=titles.getPrice() %> </td>
        <td><a href="DoDeleteTitle?isbn=<%=titles.getIsbn()%>">delete </a>

        </td>
    </tr>
    <% } %>
</table><br>

<a href="addTitle.jsp">Add Book</a><br>

    </center>
</body>
</html>




<html>
<head><title>���ά��</title></head>

</html>

