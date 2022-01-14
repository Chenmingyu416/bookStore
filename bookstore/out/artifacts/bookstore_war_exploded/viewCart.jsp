<%--
  Created by IntelliJ IDEA.
  User: chenmingyu
  Date: 2022/1/11
  Time: 11:54 上午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="bean.*,java.util.*,java.text.*"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<center>
<%
    Map cart = (Map) session.getAttribute("cart");
    double total = 0;
    if (cart == null || cart.size() == 0) out.println("<p>The cart is empty</p>");
    else {

        Set cartItems = cart.keySet();
        Object[] isbn = cartItems.toArray();//get the keys in the map and store the keys in the array
        Title book;
        CartItem cartItem;
        int quantity;
        double price, subtotal;
%>
<table cellSpacing=1 cellPadding=2 width=490 border=1>
    <thead>
    <tr ALIGN=center>
        <th>Book Title</th><th>Quantity</th><th>Price</th><th>Subtotal</th>
    </tr>
    </thead>
        <%
        int i = 0;
        while (i < isbn.length) {
            cartItem=(CartItem)cart.get(isbn[i]);
            book = cartItem.getTitles();//get name
            quantity = cartItem.getQuantity();//get quantity
            price = book.getPrice();//get books
            subtotal = quantity * price;//get subtotal
            total += subtotal; // get total
            i++;
    %>
    <tr>
        <td><%=book.getTitle()%></td>
        <td ALIGN=CENTER><%=quantity%></td>
        <td class="right"><%=new DecimalFormat("0.00").format(price)%> </td>
        <td class="bold right"><%=new
                DecimalFormat("0.00").format(subtotal)%></td>
    </tr>
        <% } %>

    <tr>
        <td colspan="4" class="bold right">
            <b>Total:</b><%=new DecimalFormat("0.00").format(total)%>
        </td>
    </tr>
</table>

<% session.setAttribute("total", new Double(total));
}
%>
    <br>
<a href="viewBook.jsp">Continue Shopping</a>
<form method="get" action="order.jsp">
    <br>
    <input type="submit" value="Checkout" />
</form>
    </center>
</body>
</html>
