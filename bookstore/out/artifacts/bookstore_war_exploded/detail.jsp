<%--
  Created by IntelliJ IDEA.
  User: chenmingyu
  Date: 2022/1/11
  Time: 11:35 上午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*,bean.*"%>
<html>
<head>
    <title>Title</title>
    <%
        Title titles = (Title) session.getAttribute("titles");
    %>
</head>
<body>
<TABLE style="TEXT-ALIGN: center" cellSpacing="0" cellPadding="0"
       width="590" border="0">
    <tr height="100">
        <td colspan="3"><h2><%=titles.getTitle()%></h2></td>
    </tr>
    <tr>
        <td rowspan="5">
            <%--<img style="border: thin solid black" width="80" height="120"--%>
            <%--src="images\\<%=titles.getIsbn()/*titles.getImageFile()*/%>.jpg"--%>
            <%--alt="<%=titles.getIsbn()%>" />--%>
        </td>
        <td class="bold" align="left">ISBN:</td>
        <td align="left"><%=titles.getIsbn()%></td>
    </tr>
    <tr align="left">
        <td class="bold" align="left">Price:</td>
        <td align="left"><%=titles.getPrice()%></td>
    </tr>
    <tr align="left">
        <td class="bold">Edition Number:</td>
        <td><%=titles.getEditionNumber()%></td>
    </tr>
    <tr align="left">
        <td class="bold">Copyright:</td>
        <td><%=titles.getCopyright()%></td>
    </tr>
    <tr align="left">
        <td>
            <form method="post" action="./AddTitleToCart"><p>
                <input type="submit" value="Add to Cart" /></p>
            </form>
        </td>
        <td>
            <form method="get" action="viewCart.jsp"><p>
                <input type="submit" value="View Cart" /></p>
            </form>
        </td>
    </tr>
</table>
</body>
</html>
