<%--
  Created by IntelliJ IDEA.
  User: 26070
  Date: 2022.11.20
  Time: 15:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员登录</title>
    <link rel="stylesheet" href="css/login.css">
    <script>
        function checked(){
            var username= document.getElementById("username");
            var password=document.getElementById("password");
            if(username.value == " " || password.value==""){
                alert("用户名或密码不能为空！");
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
<div class="wrapper">
    <div class="container">
        <h1>登录</h1>
        <form name='form1' class="form1" method='post' action='${pageContext.request.contextPath}/HandleLogin' onsubmit="return checked()">
            <input type="text" id="username" placeholder="用户名" name='username' value="">
            <input type="password" id="password" placeholder="密码" name='password'>
            <button type="submit" id="login-button" name='submit' value='submit'>登录</button>
        </form>
    </div>
    <ul class="bg-bubbles">
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
    </ul>
</div>
</body>
</html>