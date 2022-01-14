<%--
  Created by IntelliJ IDEA.
  User: chenmingyu
  Date: 2022/1/10
  Time: 10:42 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Add Book</h1>
<form method="post" action="DoAddTitle">
  <table>
    <tr><td>Isbn<td><input type="text" name="isbn"/></td></tr>
    <tr><td>Title</td><td><input type="text" name="title"/></td></tr>
    <tr><td>Edition Number</td><td><input type="text" name="editionNumber"/></td></tr>
    <tr><td>Publisher Id</td><td><input type="text" name="publisherId"/></td></tr>
    <tr><td>Copyright</td><td><input type="text" name="copyright"/></td></tr>
    <tr><td>Price</td><td><input type="text" name="price"/></td></tr>
    <tr><td><input type="submit" value="submit"/></td></tr>
  </table>
</form>


</body>
</html>
