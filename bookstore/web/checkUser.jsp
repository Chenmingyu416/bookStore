<%--
log2
  Created by IntelliJ IDEA.
  User: chenmingyu
  Date: 2022/1/9
  Time: 4:26 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.sql.*" contentType="text/html; charset=utf-8" %>
<jsp:useBean id="db" class="bean.DBcon" scope="request"/>
<html>
<head>
    <title>checkUser.jsp</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
    String name=request.getParameter("loginName");
    String password=request.getParameter("password");

    name=name.replaceAll("'", "*");
    name=name.replaceAll(" ", "");
    password=password.replaceAll("'", "*");
    password=password.replaceAll(" ", "");

%>
the user name is：<%=name %><br>
the password is：<%=password %><br><br>
<%
    Connection con =db.getConnction();
    Statement stmt = con.createStatement();
    String sql="select * from userinfo";  //check from userinfo table in db
    sql+= " where loginname='"+name+"'and password='"+password+"'";

    ResultSet rs = stmt.executeQuery(sql);

    if (rs.next()) 	//success
    {
        session.setAttribute("userName",name); //store the username in session
        response.sendRedirect("main.jsp");
    }

    else {  //failed
        out.print("the user name is wrong or password is wrong<br><br>");
        out.print("<a href='login.jsp'>log in again<//a>");
    }

%>
</body>
</html>


