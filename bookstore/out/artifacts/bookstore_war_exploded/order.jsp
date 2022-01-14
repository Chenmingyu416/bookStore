<%--
  Created by IntelliJ IDEA.
  User: chenmingyu
  Date: 2022/1/11
  Time: 6:23 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Order</title>
  <script language="javascript" type="">
        function RegsiterSubmit(){
            with(document.order){
                var user=username.value;
                var cart=creditcard.value;
                if(user==null||user==""){alert("User is wrong"); }
                else if(cart==null||cart==""){ alert("Please Enter Your Credit Card Number"); }
                else document.order.submit();
            }

        }
    </script>
</head>
<body>
<CENTER>
  <form method="POST" name="order" action="DoOrder">
    <table style="TEXT-ALIGN: center" cellSpacing=1 cellPadding=1 width=260 border=1>

      <tr><td colspan="2"><font size=4>Please Enter Order Information</font></td></tr>
      <tr><td colspan="2">&nbsp;</td> </tr>
      <tr><td>User Name</td>
        <td><div align="left">
          <input type="text" name="username" size="25" /></div></td></tr>
      <tr><td colspan="2">&nbsp;</td> </tr>
      <tr><td>Zip Code:</td>
        <td><div align="left">
          <input type="text" name="zipcode" size="25" /> </div></td></tr>
      <tr><td colspan="2">&nbsp;</td></tr>
      <tr><td>Phone:</td>
        <td><div align="left">
          <input type="text" name="phone" size="25" /></div> </td></tr>
      <tr><td colspan="2">&nbsp;</td></tr>
      <tr><td>Credit Card No.:</td>
        <td><div align="left">
          <input type="text" name="creditcard" size="25" /></div></td></tr>
      <tr><td colspan="2">&nbsp;</td></tr>
      <tr><td><input type="button" value="submit" name="B1" onclick="RegsiterSubmit()"/></td>
        <td ALIGN=center>
          <input type="reset" value="reset" name="B2"/></td></tr>

    </table>
  </form>
</CENTER>
</body>
</html>
