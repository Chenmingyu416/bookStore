<%--
  Created by IntelliJ IDEA.
  User: chenmingyu
  Date: 2022/1/11
  Time: 10:45 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="bean.*,java.util.*,java.text.*,bean.BookOrder"%>
<html>
<head><title>Order Information</title></head>
<body>
<%--same as viewCart.jsp--%>
<%BookOrder bookOrder = (BookOrder) session.getAttribute("order");%>
Order Success! The book order information detail is : <br>
<% Map cart = (Map) session.getAttribute("cart");
    double total = 0;
    if (cart == null || cart.size() == 0)
        out.println("<p>The cart is Empty</p>");
    else {
        // create param to display
        Set cartItems = cart.keySet();
        Object[] isbn = cartItems.toArray();
        Title book;
        CartItem cartItem;
        int quantity;
        double price, subtotal;
%>
<table cellSpacing=0 cellPadding=0 width=490 border=1>
    <thead>
    <tr align=“center”>
        <th>Book Title</th><th>Quantity</th><th>Price</th><th>Subtotal</th>
    </tr>
    </thead>
    <% int i = 0;
        while (i < isbn.length) {
            cartItem = (CartItem) cart.get(isbn[i]);
            book = cartItem.getTitles();
            quantity = cartItem.getQuantity();
            price = book.getPrice();
            subtotal = quantity * price;
            total += subtotal;
            i++;
    %>
    <tr>
        <td><%=book.getTitle()%></td>
        <td ALIGN=“CENTER”><%=quantity%></td>
        <td class="right"><%=new DecimalFormat("0.00").format(price)%></td>
        <td class="bold right"> <%=new DecimalFormat("0.00").format(subtotal)%>
        </td>
    </tr>
    <% } %>
    <tr>
        <td colspan="4" class="bold right">
            <b>total： </b><%=new DecimalFormat("0.00").format(total)%>
        </td>
    </tr>
</table>
<% } %>
<br>Customer information detail is：<br>
Customer Name：<%=bookOrder.getUsername()%><br>
Zip Code：<%=bookOrder.getZipcode()%><br>
Phone No.：<%=bookOrder.getPhone()%><br>
Creditcard No.：<%=bookOrder.getCreditcard()%><br>
Total：<%=bookOrder.getTotal()%>
<br>
Welcome to our Online Bookstore again! Thanks for your patient!<br>
<% session.invalidate(); %>
<h1><a href=viewCart.jsp target=main>Return Cart</a></h1>

<h1><a href=viewBook.jsp target=main>Return Bookstore</a></h1>

</body>
</html>
