<%--
  Created by IntelliJ IDEA.
  User: chenmingyu
  Date: 2022/1/11
  Time: 3:44 下午
  To change this template use File | Settings | File Templates.
--%>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Log</title>
    <script language="javascript" type="">
	function RegsiterSubmit(){  //user name and pw cannot be null
		with(document.Regsiter){
			var user=loginName.value;
			var pass=password.value;
			if(user==null||user==""){
				alert("please enter the user name");
				}
				else if(pass==null||pass==""){
					alert("please enter the password");
					}
				else submit();
			}
		}
</script>
</head>
<body>
<center>
    <table>
        <tr><td align="center"><img src="img/bookstorelogo.jpg"></img></td></tr>
        <tr><td align="center">
            <p><font color="red" size="5"> Please Log in:</font></p>
            <form method="post" name="Regsiter" action="checkUser.jsp" target="_blank"><br>
                <p>
                    user name:<input type="text" name="loginName" size="20"></p>
                <p>
                    password&nbsp;:<input type="password" name="password" size="20"></p>
                <p>
                    <input type="button" value="submit" name="B1" onclick="RegsiterSubmit()">
                    <input type="reset" value="reset" name="B2"></p>
            </form>
        </td></tr>
    </table>

</center>
</body>
</html>

