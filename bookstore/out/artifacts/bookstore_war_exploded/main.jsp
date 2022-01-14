<%--
  Created by IntelliJ IDEA.
  User: chenmingyu
  Date: 2022/1/11
  Time: 4:18 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Main</title>
    <link rel="stylesheet" type="text/css" href="css/style.css"/>
</head>
<body>
<div id="container">
    <div id="header">
        <img SRC="img/bookstorelogo1.jpeg">
    </div>
    <div class="nav"></div>
    <div class="left_main" >
        <iframe width=100%  height=425px  SRC=left.jsp></iframe>
    </div>
    <div class="right_main" >
        <iframe name="main" width=100%  height=425px  SRC=right.jsp></iframe>
    </div>
</div>
<
<style>
    body {
        margin: 0px;	text-align: center;	background: #ffffff;
    }
    #container {
        width: 100%;	height: 600px;	background: white;	margin: auto 0px;
    }
    #header {
        float: left;	width: 800px;	height: 320px;	margin: auto 0px;	clear: both;	background: white;
    }.nav {
         width: 800px;	height: 5px;	line-height: 5px;	margin: auto 0px;	clear: both;	background: #ffffff;
     }
    .left_main {
        margin: 0px;	float: left;	width: 20%;	height: 425px;	background: #66ddff;display: inline;
    }
    .right_main {
        margin: 0px;	float: left;	width: 60%;	height: 425px;	background: yellow;display: inline;
    }</style>

</body>
</html>
